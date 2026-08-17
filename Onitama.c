/*recomedable usar variables globales que locales (dentro de funciones) ya que en GBDK
las globales aunque consumen algo de ram porque están siempre en uso son de mas rapida
creación y acceso. Se usará a poder ser el formato ROM normal de 32Kb, si no el MBC5*/

#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include <stdint.h>
#include <gbdk/console.h>
#include <rand.h>
#include <gbdk/metasprites.h>
#include "onitama.h"
#include "graphics.h"
//#include <gbdk/emu_debug.h> // (usarlo solo para activar DEBUG)


/*CARGA Y ASIGNACION DE SPRITES Y TILES***************************************************************
******************************************************************************************************************
******************************************************************************************************************/
void cargar_graficos_juego(void){
    aplicar_paletas_juego();
    cargar_elementos();
    posicion_ejercitos_visual();
    cargar_cursores();
    
}

void aplicar_paletas_juego(void) {
	//cargar paletas de tiles de fondo (background)
	set_bkg_palette(0, 1, fondo_pal);
	set_bkg_palette(1,1, rojo_pal);
	set_bkg_palette(2,1, azul_pal); 
	set_bkg_palette(3,1, cartas_azul_pal);
	set_bkg_palette(4,1, cartas_rojo_pal);
	set_bkg_palette(5,1, fondo_carta_vacio);
	 if (_cpu == CGB_TYPE) {
		for(int i=0; i<40; i++) atributos_CARTAS_AZUL[i] = 3;
		set_bkg_attributes(5, 14, 10, 4, atributos_CARTAS_AZUL);
		for(int i=0; i<40; i++) atributos_CARTAS_ROJO[i] = 4;
		set_bkg_attributes(5, 0, 10, 4, atributos_CARTAS_ROJO);
		for(int i=0; i<16; i++) atributos_CARTA_LATERAL_AZUL[i] = 3;
		set_bkg_attributes(16, 7, 4, 4, atributos_CARTA_LATERAL_AZUL);
		for(int i=0; i<16; i++) atributos_CARTA_LATERAL_ROJA[i] = 4;
		set_bkg_attributes(0, 7, 4, 4, atributos_CARTA_LATERAL_ROJA);
		for(int i=0; i<16; i++) atributos_FONDO_CARTA_VACIO[i] = 5;
		set_bkg_attributes(0, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
		for(int i=0; i<24; i++) atributos_BLUE_WINS[i] =2; 
		for(int i=0; i<24; i++) atributos_RED_WINS[i] = 1;
	//ahora para los sprites
	set_sprite_palette (0,1, sprite_cursor_pal); //selector de piezas
	set_sprite_palette (1,1, sprite_cursor_carta_pal); //selector de cartas
	set_sprite_palette (2,1, fondo_pal); //linea que tapa cartas laterales	
	}										
}

void cargar_elementos(void){
    set_bkg_data(fondo_TILE_ORIGIN, fondo_TILE_COUNT, fondo_tiles); //fondo

	//peones y masters (y el fondo vacio para eliminarlas)
    set_bkg_data(peon_rojo_TILE_ORIGIN, peon_rojo_TILE_COUNT, peon_rojo_tiles); 
     set_bkg_data(master_rojo_TILE_ORIGIN, master_rojo_TILE_COUNT, master_rojo_tiles);
	set_bkg_data(peon_azul_TILE_ORIGIN, peon_azul_TILE_COUNT, peon_azul_tiles);
     set_bkg_data(master_azul_TILE_ORIGIN, master_azul_TILE_COUNT, master_azul_tiles);
	//fondos vacios para borrar elementos	
	set_bkg_data(fondo_vacio_TILE_ORIGIN, fondo_vacio_TILE_COUNT, fondo_vacio_tiles);
	set_bkg_data(fondo_vacio_carta_TILE_ORIGIN, fondo_vacio_carta_TILE_COUNT, fondo_vacio_carta_tiles);

    //Pintamos el mapa. 
    set_bkg_tiles(0, 0, 20, 18, fondo_map);

	//cartas

	set_bkg_data(carta1_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[0]->tiles); //azul inferior izquierda
	set_bkg_based_tiles(5, 14, 4, 4, carta_map, carta1_TILE_ORIGIN);

	set_bkg_data(carta2_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[1]->tiles); ; //azul inferior derecha
	set_bkg_based_tiles(11, 14, 4, 4, carta_map, carta2_TILE_ORIGIN);

	set_bkg_data(carta3_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[2]->tiles_invertidos); // rojo superior izquierda
	set_bkg_based_tiles(5, 0, 4, 4, carta_map, carta3_TILE_ORIGIN);

	set_bkg_data(carta4_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[3]->tiles_invertidos); //rojo superior derecha
	set_bkg_based_tiles(11, 0, 4, 4, carta_map, carta4_TILE_ORIGIN);
	set_bkg_data(carta5_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[4]->tiles); //carta lateral derecha refuerzo (azul)
	set_bkg_based_tiles(16, 7, 4, 4, carta_map, carta5_TILE_ORIGIN);

}
void actualizar_cartas_visual(void){
// azul
    set_bkg_data(carta1_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[0]->tiles);
    set_bkg_based_tiles(5, 14, 4, 4, carta_map, carta1_TILE_ORIGIN);
    set_bkg_data(carta2_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[1]->tiles);
    set_bkg_based_tiles(11, 14, 4, 4, carta_map, carta2_TILE_ORIGIN);

    // rojo (invertidas)
    set_bkg_data(carta3_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[2]->tiles_invertidos);
    set_bkg_based_tiles(5, 0, 4, 4, carta_map, carta3_TILE_ORIGIN);
    set_bkg_data(carta4_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[3]->tiles_invertidos);
    set_bkg_based_tiles(11, 0, 4, 4, carta_map, carta4_TILE_ORIGIN);
	if (jugador_activo == 1) {
	    // carta central (lado azul)
	    set_bkg_data(carta5_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[4]->tiles);
	    set_bkg_based_tiles(16, 7, 4, 4, carta_map, carta5_TILE_ORIGIN);
	    set_bkg_tiles(0, 7, 4, 4, fondo_vacio_carta_map);
	     if (_cpu == CGB_TYPE) {
		 	  set_bkg_attributes(16, 7, 4, 4, atributos_CARTA_LATERAL_AZUL);
		 	  set_bkg_attributes(0, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
		  }
	}

	else if (jugador_activo == 0) {
	    // carta central invertida (lado rojo)
	    set_bkg_data(carta5b_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[4]->tiles_invertidos);
	    set_bkg_based_tiles(0, 7, 4, 4, carta_map, carta5b_TILE_ORIGIN);
	     set_bkg_tiles(16, 7, 4, 4, fondo_vacio_carta_map);
	       if (_cpu == CGB_TYPE) {
			set_bkg_attributes(0, 7, 4, 4, atributos_CARTA_LATERAL_ROJA);
		 	   set_bkg_attributes(16, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
			}
	}
}
void posicion_ejercitos_visual(void){
	  for (y = 0; y < current_size; y++) {
		for (x = 0; x < current_size; x++) {
		posicion_tropa_x = 2*x + 5;
		posicion_tropa_y = 2*y + 4;
		 	   if (casillas_tablero[y][x] == 1){ //peon rojo (empiezan en el 5,4)
				set_bkg_tiles(posicion_tropa_x, posicion_tropa_y, 2, 2, peon_rojo_map); 
				 if (_cpu == CGB_TYPE) {
				set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, rojo);
				}
			}
		 	  else if  (casillas_tablero[y][x] == 2){ //master rojo
				set_bkg_tiles(posicion_tropa_x, posicion_tropa_y, 2, 2,  master_rojo_map);
				 if (_cpu == CGB_TYPE) {
				set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, rojo);	
				}
			}
			  else if (casillas_tablero[y][x] == 3){ //peon azul
				set_bkg_tiles(posicion_tropa_x , posicion_tropa_y, 2, 2, peon_azul_map);
				 if (_cpu == CGB_TYPE) {
				set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, azul);
				}
			}
			else if (casillas_tablero[y][x] == 4){ //master azul
				set_bkg_tiles(posicion_tropa_x , posicion_tropa_y, 2, 2, master_azul_map);
				 if (_cpu == CGB_TYPE) {
				set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, azul);
				}
			}
			else if (casillas_tablero[y][x] == 0){
				set_bkg_tiles(posicion_tropa_x, posicion_tropa_y, 2, 2, fondo_vacio_map);
			}
	   	 }
	}
}

void cargar_cursores(void){
    	set_sprite_data(1, 4, sprite_selector_tiles);  //indice del primer tile, el número de tiles es 4, y asociado a selector
	set_sprite_data(5, 11, sprite_selector_carta_tiles); 
	set_sprite_data(205, 1, sprite_linea_tiles); 
	px = 72+16; //72
	py = 96+24; //96
	//selector movil	
	move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, px, py); // origen, origen en tiles, indice de paleta, numero de sprite,  x=72, y=96 selector normal de 16x16
	move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 144);
	move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24, 152, 76); //lado derecho de las cartas (azul)
}


/*LAS FUNCIONES DEL JUEGO COMIENZAN AQUI***********************************************************
******************************************************************************************************************
*******************************************************************************************************************/
void delay_frames(uint16_t frames) { //funcion muy importante en vez de usar delay para que no haya descompensación de espera entre GB y GBC (doble de potencia)
    while (frames--) {
        vsync();
    }
}

void init_cgb(void) {
    if (_cpu == CGB_TYPE) {
        cpu_fast();
        set_bkg_palette(0, 1, pal_bkg_white);
    }
    CRITICAL {
        add_SIO(nowait_int_handler);
    }
    set_interrupts(VBL_IFLAG | SIO_IFLAG);
}

void intro(void){
contador = 0;
printf("\n     A game by\n  Boniato82, 2026\n\n");
printf("  Based on Onitama\n     board game\n\n");
game_state = 1;
for(contador = 0; contador< 250; contador++){
        // Si se pulsa A o B, salimos del bucle inmediatamente
        if (joypad() & (J_A | J_B)) {
            break; 
        }
        vsync(); // Espera un frame (aprox. 1/60 de segundo)
    }
delay_frames(30);	
cls();
}

void pantalla_titulo(void){
		SPRITES_8x8;
	 // 1. Cargamos las paletas
		set_bkg_palette(0, 1, titulo_pal);  //indice de la paleta = 0 - numero de paletas a usar 1- nombre de la paleta
		set_bkg_palette(1, 1, rojo_pal); 
		set_bkg_palette(2, 1, azul_pal); 
		set_bkg_palette(3, 1, verde_pal);
		set_bkg_palette(4, 1, naranja_pal);
		set_bkg_palette(5, 1, azul2_pal); 
		set_bkg_palette(6, 1, rojo2_pal);
		set_sprite_palette (0,1, sprite_modo_pal); 
		set_sprite_palette (1,1, sprite_modo_pal_rojo); 
		set_sprite_palette (2,1, sprite_modo_pal_azul); 
		set_sprite_palette (3,1, sprite_modo_pal_verde);
		set_sprite_palette (4,1, sprite_modo_pal_naranja);	
		set_sprite_data(1, 1, sprite_selector_modo_tiles);
		for(int i=0; i<22; i++) atributos_ROJO[i] = 1;
		for(int i=0; i<22; i++) atributos_AZUL[i] = 2; 
		for(int i=0; i<8; i++) atributos_VERDE[i] = 3;
		for(int i=0; i<8; i++) atributos_NARANJA[i] = 4;
		for(int i=0; i<8; i++) atributos_AZUL2[i] = 5; 
		for(int i=0; i<8; i++) atributos_ROJO2[i] = 6; 
		if (_cpu == CGB_TYPE) {	
		set_bkg_attributes(4, 7, 11, 2, atributos_ROJO); //posicion x, posicion y, tiles de 8x8 en ancho = 48 pixels, tiles de 8x8 en alto
		set_bkg_attributes(4, 15, 11, 2, atributos_AZUL);
		}
	    // 2. Cargamos los datos del titulo y el selector de modo
	set_bkg_data( titulo_TILE_ORIGIN, titulo_TILE_COUNT, titulo_tiles); 
	 set_bkg_data(seleccion_modo_TILE_ORIGIN, seleccion_modo_TILE_COUNT, seleccion_modo_tiles);

	    // 3. Pintamos el mapa. 
	set_bkg_tiles(0, 0, 20, 18, titulo_map); 
	SHOW_BKG;
	delay_frames(100);
		sfx_sable();
		vsync();
		seleccionar_modo();
		vsync();
		cls();
		VBK_REG = 1; // Cambiar al banco de VRAM 1 (Atributos)
		fill_bkg_rect(0, 0, 20, 18, 0); // Llenar con 0 (Paleta 0, sin flip, etc.)
		VBK_REG = 0; // Volver al banco 0 para operaciones normales
}

void seleccionar_modo(void){
	set_bkg_data(seleccion_modo_TILE_ORIGIN, seleccion_modo_TILE_COUNT, seleccion_modo_tiles);
	set_bkg_tiles(5, 9, 10, 6, seleccion_modo_map);
	if (_cpu == CGB_TYPE) {	
		set_bkg_attributes(6, 9, 8, 1, atributos_VERDE);
		set_bkg_attributes(6, 10, 8, 1, atributos_NARANJA);
		set_bkg_attributes(6, 11, 8, 1, atributos_ROJO2);
		set_bkg_attributes(6, 13, 8, 1, atributos_AZUL2);
		}
	SHOW_SPRITES;
	move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 103);// origen, origen en tiles, indice de paleta, numero de sprite,  x=57 y=102
	set_sprite_prop(0, 4);   
	modo_juego = 1; //por defecto (vs master).
		while (!(joypad() & J_A)) //mientras que no se pulse A
	{
			if (joypad() & J_DOWN){
				switch (modo_juego){
				case 0:
					modo_juego=1; //cambia a vs Master
					 move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0,  60, 103);  
					set_sprite_prop(0, 4); 
				break;
				case 1:
					modo_juego=2; //cambia a vs Legend
					move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 111);
					set_sprite_prop(0, 1);
				break;
				case 2:
					modo_juego=3; //cambia a 2 players
					move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 62, 124);
					set_sprite_prop(0, 2); 
				break;
			}
			delay_frames(16);	//	60 frames = 1 segundo. 16 frames ≈ 266 ms)
			}
			if (joypad() & J_UP){
				switch (modo_juego){
				case 1:
					modo_juego=0; //cambia a vs Student
					move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 57, 95);
					set_sprite_prop(0, 3); 
				break;
				case 2:
					modo_juego=1; //cambia a vs Master
					move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 103);
					set_sprite_prop(0, 4); 
				break;	
				case 3:
					modo_juego=2; //cambia a vs Legend
					move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 111);
					set_sprite_prop(0, 1); 
				break;						
			}
			delay_frames(16);		
			}
		vsync();
		}
	waitpadup();
	move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 0, 0);
	if (modo_juego==3){
	menu_2players();	
	}
}
void inicio_partida(void) {
    uint16_t rng_seed = LY_REG;
    rng_seed |= (uint16_t)DIV_REG << 8;
    initrand(rng_seed);
    mezclar_indices(indices, 16);
    if ((modo_juego != 4) || (modo_juego == 4 && player_is_host != 0)){ //si se juega a cualquier juego que no sea link o si en link comienza él la partida
		cartas_partida[0] = mazo[indices[0]];
		cartas_partida[1] = mazo[indices[1]];
		cartas_partida[2] = mazo[indices[2]];
		cartas_partida[3] = mazo[indices[3]];
		cartas_partida[4] = mazo[indices[4]];
	}
    turno_de_juego = 1;

    if (modo_juego == 4) {
        link_sync_inicial();
        jugador_activo = 0; //el jugador activo es el azul (0)
        if (player_is_host){ es_mi_turno = 1;}
        else { es_mi_turno = 0;}   
    }
    cargar_graficos_juego();
    SHOW_BKG;
    SHOW_SPRITES;
}

void mezclar_indices(uint8_t* array, uint8_t size) {
    for (i = size - 1; i > 0; i--) {
        j = rand() % (i + 1);

        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
}

/*********************************************************
****************JUEGO***********************************
*********************************************************/
void juego(void) {
    while (hay_ganador == 0 && game_state != 4) {
        if (modo_juego == 4) {
		/* jugador_activo 0 = turno azul = turno del host
		   jugador_activo 1 = turno rojo = turno del cliente */
		es_mi_turno = (player_is_host == 1  && jugador_activo == 0) ||  //turno si es jugador azul+turno azul o rojo+turno rojo
							  (player_is_host == 0 && jugador_activo == 1);
		if (es_mi_turno) {
			handle_input();
		} else {
			link_recibir_movimiento();
		}
	}else if (es_turno_cpu()) {
            if (!cpu_ha_jugado) {
                ejecutar_turno_cpu();
                cpu_ha_jugado = 1;
                if (turno_de_juego < 255) turno_de_juego++;
            }
        } else {
            cpu_ha_jugado = 0;
            handle_input();
        }
        actualizar_cursores();
        vsync();
    }
    vsync();
	move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, 0, 0);
    if (hay_ganador == 1) {
        sfx_victoria();
        set_bkg_data(wins_TILE_ORIGIN, wins_TILE_COUNT, blue_wins_tiles);
        set_bkg_tiles(7, 7, 6, 4, wins_map);
        if (_cpu == CGB_TYPE) set_bkg_attributes(7, 7, 6, 4, atributos_BLUE_WINS);
    }
    else if (hay_ganador == 2) {
        sfx_derrota();
        set_bkg_data(wins_TILE_ORIGIN, wins_TILE_COUNT, red_wins_tiles);
        set_bkg_tiles(7, 7, 6, 4, wins_map);
        if (_cpu == CGB_TYPE) set_bkg_attributes(7, 7, 6, 4, atributos_RED_WINS);
    }
    if (hay_ganador != 0) delay_frames(200);
    game_state = 4;
}


void handle_input(void) { //manejo del cursor.
input = joypad();
vsync();
    if (input & J_LEFT  && px > 40+16) {px-=16;  delay_frames(10);}
    if (input & J_RIGHT && px < 104+16){ px+=16; delay_frames(10);} //sumamos +16 porque si no no está bien cuadrado.
    if (input & J_UP    && py > 40+16) {py-=16; delay_frames(10);}
    if (input & J_DOWN  && py < 96+16) {py+=16; delay_frames(10);}
     if((input & J_SELECT) && (input &  J_A) && (input &  J_B)) {  
    	waitpadup();
    	game_state = 4;  //reseteo del juego 
    }
	if (input  & J_A) { 
	waitpadup();
	procesar_seleccion();
	}
    if (input & J_B) {
	if (selecciona_derecha == 0) {
		selecciona_derecha = 1;
		delay_frames(10);
	}
	else {
		selecciona_derecha = 0; 
		delay_frames(10);
	}
     }


}

//comprobar movimiento valido
uint8_t movimiento_valido(
    uint8_t origen_x,
    uint8_t origen_y,
    uint8_t destino_x,
    uint8_t destino_y,
    const Carta* carta,
    uint8_t jugador_activo
) {
    int8_t dx = destino_x - origen_x;
    int8_t dy = destino_y - origen_y;

   if (jugador_activo == 1) {
        dx = -dx;
        dy = -dy;
    }

    const Movimiento* movs = carta->movimientos;
    uint8_t cantidad = carta->cantidad;
    uint8_t i;
    for (i = 0; i < cantidad; i++) {
        if (dx == movs[i].dx && dy == movs[i].dy) {
            return 1;
        }
    }
    return 0;
}

//ACTUALIZAR CURSOR
void actualizar_cursores(void) {
	//selector movil  
		 move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, px, py);
	//selector fijo	
		if (selector_fijo_activo) { 
		move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, selector_fijo_x, selector_fijo_y);
		}
		else {
    		move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, 0, 0); // fuera de pantalla
		}


	if (jugador_activo == 0) { //selector de carta
	    // AZUL (abajo)
	    if (selecciona_derecha == 0)
		move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 144);
	    else
		move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 116, 144);
	} else {
	    // ROJO (arriba)
	    if (selecciona_derecha == 0)
		move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 33);
	    else
		move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 116, 33);
	}
	 
    move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24, 152, 76); //lado derecho de las cartas (azul)
}


void procesar_seleccion(void) {
  	x = (px - 40 - 8) / 16;
   	 y = (py - 32 - 9) / 16;

    // ROTECCIÓN DE LÍMITES
    if (x > 4 || y > 4) return;
   if (pieza_seleccionada == 0) {
        // FASE 1: seleccionar pieza válida
	pieza = casillas_tablero[y][x];
	if ((jugador_activo == 0 && (pieza == 3 || pieza == 4)) || (jugador_activo == 1 && (pieza  == 1 || pieza == 2))) {
    		origen_x = x;
        	    origen_y = y;
       	     pieza_seleccionada = 1; 
		 selector_fijo_activo = 1;
 		 selector_fijo_x = px;
 		  selector_fijo_y = py;
	    delay_frames(10);
}	

    } else if (pieza_seleccionada == 1) { // FASE 2
	destino_x = x;
	destino_y = y;
	uint8_t pieza_destino = casillas_tablero[destino_y][destino_x];
	if (jugador_activo == 0) {	 // azul					
		    if (pieza_destino == 3 || pieza_destino == 4) {
      	 	 pieza_seleccionada = 0;
        	selector_fijo_activo = 0;
       		 return;    
		}    
	
	if (selecciona_derecha == 0){
            carta_actual = cartas_partida[0];
	   indice_carta_usada = 0;}
        else{
            carta_actual = cartas_partida[1];
	    indice_carta_usada = 1;}
    } else {
	  if (pieza_destino == 1 || pieza_destino == 2) {
	        pieza_seleccionada = 0;
	        selector_fijo_activo = 0;
	        return;
	    }
        if (selecciona_derecha == 0){
            carta_actual = cartas_partida[2];
	    indice_carta_usada = 2;}
        else{
            carta_actual = cartas_partida[3];
	    indice_carta_usada = 3;}
    }
	if (movimiento_valido(origen_x, origen_y, destino_x, destino_y, carta_actual, jugador_activo)) {
        casillas_tablero[destino_y][destino_x] = casillas_tablero[origen_y][origen_x];
		casillas_tablero[origen_y][origen_x] = 0;
		if (jugador_activo == 0) sfx_mover_pieza();
		else sfx_mover_pieza_rojo();
		if (modo_juego == 4) {
		    link_enviar_movimiento(origen_x, origen_y, destino_x, destino_y, indice_carta_usada);
		}
			//INTERCAMBIO DE CARTA
		    const Carta* temp = cartas_partida[4];
			cartas_partida[4] = cartas_partida[indice_carta_usada];
			cartas_partida[indice_carta_usada] = temp;
			waitpadup();
			actualizar_cartas_visual();
		    // CAMBIO DE TURNO
		    jugador_activo = !jugador_activo;
			posicion_ejercitos_visual();
		}
	selector_fijo_activo = 0;
	pieza_seleccionada = 0;
	comprobar_victoria(); 
	delay_frames(10);
	}
}

void comprobar_victoria(void) {
hay_master_rojo = 0;
hay_master_azul = 0;
    // Buscar masters en el tablero
    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {
            if (casillas_tablero[y][x] == 2) hay_master_rojo = 1;
            if (casillas_tablero[y][x] == 4) hay_master_azul = 1;
        }
    }

    // 🥋 Captura
    if (!hay_master_rojo) {
        hay_ganador = 1; // gana azul
        return;
    }

    if (!hay_master_azul) {
        hay_ganador = 2; // gana rojo
        return;
    }

    // 🏯 Templo
    if (casillas_tablero[0][2] == 4) {
        hay_ganador = 1; // azul gana
        return;
    }

    if (casillas_tablero[4][2] == 2) {
        hay_ganador = 2; // rojo gana
        return;
    }
}

uint8_t es_turno_cpu(void) {
    if (modo_juego == 3) return 0; // 2 jugadores

    if (jugador_activo == 1) return 1; // rojo = CPU

    return 0;
}



/*FUNCION MAIN PRINCIPAL****************************************************************************
FUNCION MAIN PRINCIPAL******************************************************************************
FUNCION MAIN PRINCIPAL******************************************************************************/
void main(void) {
       init_cgb(); //ponerlo en modo GBC si el hardware lo es. Impedir jugar en modo GB original
       while (1) {
	switch (game_state){
        case 0: //lo ponemos al final, apartado del resto.
            intro();
	break;
	case 1:
            pantalla_titulo();
	    game_state = 2;
	break;
	case 2:
	    inicio_partida();
	    game_state = 3;
	break;
	case 3:
	    juego();
	    game_state = 4;
	break;
	case 4:
	   reseteo_juego();
	   game_state = 1; //volvemos a la pantalla de título.
	break;
	}
    }
}

void reseteo_juego(void){
	vsync(); //wait_vbl_done();
	//ocultamos sprites
	HIDE_SPRITES;
	move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, 0, 0); // origen, origen en tiles, indice de paleta, numero de sprite,  x=72, y=96 selector normal de 16x16
	move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, 0, 0); // fuera de pantalla
	move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8,  0, 0);
	move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24,  0, 0); //lado derecho de las cartas (azul)//ocultamos sprites.
	cls();
        HIDE_BKG;
	VBK_REG = 1;
 	 fill_bkg_rect(0, 0, 20, 18, 0);
  	 VBK_REG = 0; 
	SHOW_BKG;
	SHOW_SPRITES;
	hay_ganador = 0;
	pieza_seleccionada = 0;
	selecciona_derecha = 0; 
	jugador_activo = 0;
	player_is_host = 0;
	 cpu_ha_jugado = 0;
	modo_juego = 1;
	turno_de_juego = 1;		
	for (uint8_t y = 0; y < 5; y++) {
    for (uint8_t x = 0; x < 5; x++) {
        casillas_tablero[y][x] = casillas_tablero_inicial[y][x];
    }
}
game_state = 1;
}

/****************************FUNCIONES DE IA***********************
************************************************************************
***********************************************************************/

//TURNO DE LA CPU**************************************************
void ejecutar_turno_cpu(void) {
   total_movimientos_cpu = 0;
    encontrado = 0;

    // recorrer tablero
    for (y = 0; y < 5 && !encontrado; y++) {
        for (x = 0; x < 5 && !encontrado; x++) {

            // comprobar si es pieza de la CPU (rojo)
            if (casillas_tablero[y][x] == 1 || casillas_tablero[y][x] == 2) {

                origen_x = x;
                origen_y = y;

                // probar ambas cartas
                for (i = 0; i < 2 && !encontrado; i++) {
					if (i == 0) {
					carta_actual = cartas_partida[2];
					indice_carta_usada = 2;
					} else {
						carta_actual = cartas_partida[3];
					indice_carta_usada = 3;
					}

                    const Movimiento* movs = carta_actual->movimientos;
                    cantidad = carta_actual->cantidad;
					uint8_t m;
                    for (m = 0; m < cantidad && !encontrado; m++) {
			
                        dx = movs[m].dx;
                        dy = movs[m].dy;

                        // invertir porque CPU es rojo
                        dx = -dx;
                        dy = -dy;

                        destino_x = origen_x + dx;
                        destino_y = origen_y + dy;

                        // dentro del tablero
                        if (destino_x > 4 || destino_y > 4) continue;

                        // evitar comer propias piezas
                        int8_t destino = casillas_tablero[destino_y][destino_x];
                        if (destino == 1 || destino == 2) continue;

                        // validar movimiento real
                     if (movimiento_valido(origen_x, origen_y, destino_x, destino_y, carta_actual, 1)) {

			    if (total_movimientos_cpu < MAX_MOVIMIENTOS_CPU) {

				movimientos_cpu[total_movimientos_cpu].origen_x = origen_x;
				movimientos_cpu[total_movimientos_cpu].origen_y = origen_y;
				movimientos_cpu[total_movimientos_cpu].destino_x = destino_x;
				movimientos_cpu[total_movimientos_cpu].destino_y = destino_y;
				movimientos_cpu[total_movimientos_cpu].indice_carta = indice_carta_usada;

				total_movimientos_cpu++;
			    }
			}
                    }
                }
            }
        }
    }

if (total_movimientos_cpu > 0) {

    if (modo_juego == 1) {
		profundidad_minimax = 2;
		ejecutar_minimax();
	} else if (modo_juego == 2) {
		profundidad_minimax = 3;
		ejecutar_minimax();
	} else {
        /* MODO STUDENT: sistema original de heuristicas simples */
        mejor_valor = -1000;
        mejor_mov = movimientos_cpu[0];

        for (i = 0; i < total_movimientos_cpu; i++) {
            m = movimientos_cpu[i];
            valor = 0;
            pieza = casillas_tablero[m.origen_y][m.origen_x];
            destino = casillas_tablero[m.destino_y][m.destino_x];

            pieza_destino = casillas_tablero[m.destino_y][m.destino_x];
            es_captura = (pieza_destino != 0);
            copiar_tablero(casillas_tablero, tablero_sim);
            aplicar_movimiento_simulado(tablero_sim, &m);

            pieza_en_peligro = 0;
            if (pieza != 2) {
                pieza_en_peligro = pieza_roja_en_peligro_sim(tablero_sim, cartas_partida, m.destino_x, m.destino_y);
            }
            mal_intercambio = 0;
            if (pieza != 2 && pieza_en_peligro) {
                mal_intercambio = evaluar_intercambio_basico(tablero_sim, cartas_partida, m.destino_x, m.destino_y);
            }

            uint8_t gana = comprobar_victoria_sim(tablero_sim);
            if (gana == 2) {
                mejor_mov = m;
                break;
            }

            uint8_t peligro_despues_sim = master_rojo_en_peligro_sim(tablero_sim, cartas_partida);

            if (peligro_despues_sim) valor -= 100;

            if (es_captura) {
                if (!peligro_despues_sim) valor += 50;
                else {
                    if (pieza != 2) valor += 10;
                    else valor -= 100;
                }
            }

            uint8_t pieza_origen = casillas_tablero[m.origen_y][m.origen_x];
            if (pieza_origen == 2 && !peligro_despues_sim) {
                uint8_t dist_actual = (4 - m.origen_y) + (m.origen_x > 2 ? m.origen_x - 2 : 2 - m.origen_x);
                uint8_t dist_nueva  = (4 - m.destino_y) + (m.destino_x > 2 ? m.destino_x - 2 : 2 - m.destino_x);
                if (dist_nueva < dist_actual) valor += 25;
            }

            if (!peligro_despues_sim) {
                uint8_t dist_actual = (m.origen_y > 2 ? m.origen_y - 2 : 2 - m.origen_y)
                                    + (m.origen_x > 2 ? m.origen_x - 2 : 2 - m.origen_x);
                uint8_t dist_nueva  = (m.destino_y > 2 ? m.destino_y - 2 : 2 - m.destino_y)
                                    + (m.destino_x > 2 ? m.destino_x - 2 : 2 - m.destino_x);
                if (dist_nueva < dist_actual) valor += 5;
            }

            const Carta* carta_entregada = cartas_partida[m.indice_carta];
            if (rival_puede_ganar_templo_con_carta(tablero_sim, carta_entregada)) valor -= 100;

            if (valor > mejor_valor) {
                mejor_valor = valor;
                mejor_mov = m;
            }
        }
    }

    hay_ganador = 0;

    m = mejor_mov;
    era_captura_cpu = (casillas_tablero[m.destino_y][m.destino_x] != 0);
    casillas_tablero[m.destino_y][m.destino_x] = casillas_tablero[m.origen_y][m.origen_x];
    casillas_tablero[m.origen_y][m.origen_x] = 0;
    sfx_mover_pieza_rojo();
    posicion_ejercitos_visual();
    comprobar_victoria();

    const Carta* temp = cartas_partida[4];
    cartas_partida[4] = cartas_partida[m.indice_carta];
    cartas_partida[m.indice_carta] = temp;
    actualizar_cartas_visual();
    jugador_activo = 0;
}
}

void aplicar_movimiento_simulado(uint8_t tablero_mov_sim[5][5], MovimientoCPU* mov) {
    pieza_mov_sim = tablero_mov_sim[mov->origen_y][mov->origen_x];
    tablero_mov_sim[mov->destino_y][mov->destino_x] = pieza_mov_sim;
    tablero_mov_sim[mov->origen_y][mov->origen_x] = 0;
}

uint8_t master_rojo_en_peligro_sim(uint8_t tablero[5][5], const Carta* cartas[5]) {
	int8_t mx_local = -1;
    int8_t my_local = -1;

    uint8_t x, y, c, k;

    // 1. Buscar master rojo
    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {
            if (tablero[y][x] == 2) {
                mx_local = x;
                my_local = y;
            }
        }
    }
     // 2. Recorrer piezas azules
    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {

            if (tablero[y][x] == 3 || tablero[y][x] == 4) {

                for (c = 0; c < 2; c++) {

                    const Carta* carta = cartas[c]; // cartas azul

                    for (k = 0; k < carta->cantidad; k++) {

                        int8_t dx = carta->movimientos[k].dx;
                        int8_t dy = carta->movimientos[k].dy;

                        int8_t destino_x = x + dx;
                        int8_t destino_y = y + dy;

                        if (destino_x >= 0 && destino_x < 5 &&
                            destino_y >= 0 && destino_y < 5) {

                            if (destino_x == mx_local && destino_y == my_local) {
                                return 1;
                            }
                        }
                    }
                }
            }
        }
	}
    return 0;
}

void copiar_tablero(uint8_t origen[5][5], uint8_t destino[5][5]) {
    uint8_t* src = (uint8_t*)origen;
    uint8_t* dst = (uint8_t*)destino;
    uint8_t n = 25;
    while (n--) *dst++ = *src++;
}

uint8_t comprobar_victoria_sim(uint8_t tablero[5][5]) {

    hay_master_rojo_sim = 0;
    hay_master_azul_sim = 0;

    // buscar masters
    for (y_sim = 0; y_sim < 5; y_sim++) {
        for (x_sim = 0; x_sim < 5; x_sim++) {

            if (tablero[y_sim][x_sim] == 2) {
                hay_master_rojo_sim = 1;

                // templo azul (fila 4, columna 2)
                if (y_sim == 4 && x_sim == 2) {
                    return 2; // gana rojo
                }
            }

            if (tablero[y_sim][x_sim] == 4) {
                hay_master_azul_sim = 1;

                // templo rojo (fila 0, columna 2)
                if (y_sim == 0 && x_sim == 2) {
                    return 1; // gana azul
                }
            }
        }
    }

    // si falta algún master
    if (!hay_master_azul_sim) return 2;
    if (!hay_master_rojo_sim) return 1;

    return 0;
}

uint8_t rival_puede_ganar_templo_con_carta(uint8_t tablero[5][5], const Carta* carta) {

    uint8_t x, y, k;

    // recorrer piezas azules
    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {

            // solo importa el MASTER azul
            if (tablero[y][x] == 4) {

                for (k = 0; k < carta->cantidad; k++) {

                    int8_t dx = carta->movimientos[k].dx;
                    int8_t dy = carta->movimientos[k].dy;

                    int8_t destino_x = x + dx;
                    int8_t destino_y = y + dy;

                    if (destino_x >= 0 && destino_x < 5 &&
                        destino_y >= 0 && destino_y < 5) {

                        // templo rojo (0,2)
                        if (destino_x == 2 && destino_y == 0) {
                            return 1;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

void generar_movimientos_rojo(uint8_t tablero[5][5], const Carta* cartas[5], MovimientoCPU* lista, uint8_t* total) {
    uint8_t rx, ry, ri, rm;

    *total = 0;

    for (ry = 0; ry < 5; ry++) {
        for (rx = 0; rx < 5; rx++) {
            if (tablero[ry][rx] == 1 || tablero[ry][rx] == 2) {
                for (ri = 0; ri < 2; ri++) {
                    gen_carta    = cartas[ri + 2];
                    gen_cantidad = gen_carta->cantidad;
                    for (rm = 0; rm < gen_cantidad; rm++) {
                        gen_dx = -(gen_carta->movimientos[rm].dx);
                        gen_dy = -(gen_carta->movimientos[rm].dy);

                        if ((int8_t)rx + gen_dx < 0 || (int8_t)rx + gen_dx > 4) continue;
                        if ((int8_t)ry + gen_dy < 0 || (int8_t)ry + gen_dy > 4) continue;

                        gen_destino_x     = (uint8_t)((int8_t)rx + gen_dx);
                        gen_destino_y     = (uint8_t)((int8_t)ry + gen_dy);
                        gen_destino_pieza = tablero[gen_destino_y][gen_destino_x];

                        if (gen_destino_pieza == 1 || gen_destino_pieza == 2) continue;

                        if (*total < MAX_MOVIMIENTOS_CPU) {
                            lista[*total].origen_x     = rx;
                            lista[*total].origen_y     = ry;
                            lista[*total].destino_x    = gen_destino_x;
                            lista[*total].destino_y    = gen_destino_y;
                            lista[*total].indice_carta = ri + 2;
                            (*total)++;
                        }
                    }
                }
            }
        }
    }
}


void generar_movimientos_azul(uint8_t tablero[5][5], const Carta* cartas[5], MovimientoCPU* lista, uint8_t* total) {
    uint8_t ax, ay, ai, am;

    *total = 0;

    for (ay = 0; ay < 5; ay++) {
        for (ax = 0; ax < 5; ax++) {
            if (tablero[ay][ax] == 3 || tablero[ay][ax] == 4) {
                for (ai = 0; ai < 2; ai++) {
                    gen_carta    = cartas[ai];
                    gen_cantidad = gen_carta->cantidad;
                    for (am = 0; am < gen_cantidad; am++) {
                        gen_dx = gen_carta->movimientos[am].dx;
                        gen_dy = gen_carta->movimientos[am].dy;

                        if ((int8_t)ax + gen_dx < 0 || (int8_t)ax + gen_dx > 4) continue;
                        if ((int8_t)ay + gen_dy < 0 || (int8_t)ay + gen_dy > 4) continue;

                        gen_destino_x     = (uint8_t)((int8_t)ax + gen_dx);
                        gen_destino_y     = (uint8_t)((int8_t)ay + gen_dy);
                        gen_destino_pieza = tablero[gen_destino_y][gen_destino_x];

                        if (gen_destino_pieza == 3 || gen_destino_pieza == 4) continue;

                        if (*total < MAX_MOVIMIENTOS_CPU) {
                            lista[*total].origen_x     = ax;
                            lista[*total].origen_y     = ay;
                            lista[*total].destino_x    = gen_destino_x;
                            lista[*total].destino_y    = gen_destino_y;
                            lista[*total].indice_carta = ai;
                            (*total)++;
                        }
                    }
                }
            }
        }
    }
}

int16_t evaluar_estatico(uint8_t tablero[5][5], const Carta* cartas_sim[5]) {
    uint8_t ex, ey;
    int16_t puntos = 0;
    int8_t mx_rojo = -1, my_rojo = -1;
    int8_t mx_azul = -1, my_azul = -1;
    uint8_t pieza_eval;
    int8_t peones_rojo = 0;
    int8_t peones_azul = 0;

    /* --- 1. Contar piezas y localizar masters --- */
    for (ey = 0; ey < 5; ey++) {
        for (ex = 0; ex < 5; ex++) {
            pieza_eval = tablero[ey][ex];
            if (pieza_eval == 1) {
                peones_rojo++;
                /* bonus por peones rojos avanzados (filas 2,3,4) */
                puntos += (int16_t)ey * 15;
            }
            if (pieza_eval == 3) {
                peones_azul++;
                /* penalizacion por peones azules avanzados hacia rojo (filas 0,1,2) */
                puntos -= (int16_t)(4 - ey) * 15;
            }
            if (pieza_eval == 2) { mx_rojo = ex; my_rojo = ey; }
            if (pieza_eval == 4) { mx_azul = ex; my_azul = ey; }
        }
    }

    /* --- 2. Ventaja material --- */
    puntos += (int16_t)(peones_rojo - peones_azul) * 80;

    /* --- 3. Condiciones de victoria/derrota --- */
    if (mx_rojo == -1) return -10000;
    if (mx_azul == -1) return +10000;
    if (mx_rojo == 2 && my_rojo == 4) return +10000;
    if (mx_azul == 2 && my_azul == 0) return -10000;

    /* --- 4. Proximidad del master rojo al templo azul (fila 4, col 2) ---
       Peso alto: la IA debe querer avanzar activamente                    */
    {
        uint8_t dist_r = (uint8_t)(4 - my_rojo)
                       + (uint8_t)(mx_rojo > 2 ? mx_rojo - 2 : 2 - mx_rojo);
        puntos += (int16_t)(6 - dist_r) * 60;
    }

    /* --- 5. Peligro: master azul cerca del templo rojo (fila 0, col 2) --- */
    {
        uint8_t dist_a = (uint8_t)my_azul
                       + (uint8_t)(mx_azul > 2 ? mx_azul - 2 : 2 - mx_azul);
        puntos -= (int16_t)(6 - dist_a) * 45;
    }

    /* --- 6. Master rojo en peligro ---
       Penalizacion reducida: la IA no debe paralizarse por miedo,
       especialmente si tiene ventaja material                      */
    if (master_rojo_en_peligro_sim(tablero, cartas_sim)) {
        int8_t ventaja = peones_rojo - peones_azul;
        if (ventaja >= 1) {
            puntos -= 80;  /* con ventaja clara, el riesgo es tolerable */
        } else {
            puntos -= 200; /* sin ventaja, si hay que protegerse */
        }
    }

    /* --- 7. Master azul en peligro (oportunidad ofensiva) --- */
    {
        uint8_t bx, by, bc, bk;
        for (by = 0; by < 5; by++) {
            for (bx = 0; bx < 5; bx++) {
                if (tablero[by][bx] == 1 || tablero[by][bx] == 2) {
                    for (bc = 2; bc < 4; bc++) {
                        const Carta* bcarta = cartas_sim[bc];
                        for (bk = 0; bk < bcarta->cantidad; bk++) {
                            int8_t bdx = -(bcarta->movimientos[bk].dx);
                            int8_t bdy = -(bcarta->movimientos[bk].dy);
                            int8_t bdx2 = (int8_t)bx + bdx;
                            int8_t bdy2 = (int8_t)by + bdy;
                            if (bdx2 >= 0 && bdx2 < 5 &&
                                bdy2 >= 0 && bdy2 < 5) {
                                if (bdx2 == mx_azul && bdy2 == my_azul) {
                                    puntos += 180;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    return puntos;
}

void ordenar_movimientos_cpu(void) {
    uint8_t peligro_actual;

    /* calcular prioridad de cada movimiento */
    peligro_actual = master_rojo_en_peligro_sim(casillas_tablero, cartas_partida);

    for (ord_i = 0; ord_i < total_movimientos_cpu; ord_i++) {
        prioridades[ord_i] = 0;

        ord_pieza   = casillas_tablero[movimientos_cpu[ord_i].origen_y]
                                      [movimientos_cpu[ord_i].origen_x];
        ord_destino = casillas_tablero[movimientos_cpu[ord_i].destino_y]
                                      [movimientos_cpu[ord_i].destino_x];

        /* victoria inmediata: captura master azul */
        if (ord_destino == 4) {
            prioridades[ord_i] = 100;
            continue;
        }

        /* victoria inmediata: master rojo llega al templo azul */
        if (ord_pieza == 2 &&
            movimientos_cpu[ord_i].destino_x == 2 &&
            movimientos_cpu[ord_i].destino_y == 4) {
            prioridades[ord_i] = 100;
            continue;
        }

        /* captura de peon azul */
        if (ord_destino == 3) {
            prioridades[ord_i] = 60;
            continue;
        }

        /* master rojo escapa de peligro */
        if (peligro_actual && ord_pieza == 2) {
            prioridades[ord_i] = 50;
            continue;
        }

        /* avance del master rojo hacia el templo */
        if (ord_pieza == 2 &&
            movimientos_cpu[ord_i].destino_y > movimientos_cpu[ord_i].origen_y) {
            prioridades[ord_i] = 20;
        }
    }

    /* insertion sort descendente por prioridad */
    for (ord_i = 1; ord_i < total_movimientos_cpu; ord_i++) {
        ord_temp_mov = movimientos_cpu[ord_i];
        ord_temp_pri = prioridades[ord_i];
        ord_j = ord_i;
        while (ord_j > 0 && prioridades[ord_j - 1] < ord_temp_pri) {
            movimientos_cpu[ord_j] = movimientos_cpu[ord_j - 1];
            prioridades[ord_j]     = prioridades[ord_j - 1];
            ord_j--;
        }
        movimientos_cpu[ord_j] = ord_temp_mov;
        prioridades[ord_j]     = ord_temp_pri;
    }
}

void ejecutar_minimax(void) {
    uint8_t mi, mj, mk;

    mejor_valor = -30000;
    alfa_global = -30000;
    mejor_mov   = movimientos_cpu[0];
    ordenar_movimientos_cpu(); //prioridad de movimientos en orden de importancia.

    for (mi = 0; mi < total_movimientos_cpu; mi++) {

        /* ── NIVEL 1: movimiento rojo ── */
        copiar_tablero(casillas_tablero, tablero_sim);
        for (nn_sim = 0; nn_sim < 5; nn_sim++) cartas_sim[nn_sim] = cartas_partida[nn_sim];

        aplicar_movimiento_simulado(tablero_sim, &movimientos_cpu[mi]);

        carta_temp_sim = cartas_sim[4];
        cartas_sim[4]  = cartas_sim[movimientos_cpu[mi].indice_carta];
        cartas_sim[movimientos_cpu[mi].indice_carta] = carta_temp_sim;

        resultado_sim = comprobar_victoria_sim(tablero_sim);
        if (resultado_sim == 2) {
            mejor_mov = movimientos_cpu[mi];
            return;
        }

        /* ── NIVEL 2: respuesta azul ── */
        generar_movimientos_azul(tablero_sim, cartas_sim, lista_azul, &total_azul);

        if (total_azul == 0) {
            punt_sim = evaluar_estatico(tablero_sim, cartas_sim);
            if (punt_sim > mejor_valor) {
                mejor_valor = punt_sim;
                alfa_global = punt_sim;
                mejor_mov   = movimientos_cpu[mi];
            }
            continue;
        }

        mejor_nivel2_sim = 30000;
        beta_global      = 30000;

        for (mj = 0; mj < total_azul; mj++) {

            copiar_tablero(tablero_sim, tablero_sim2);
            for (nn_sim = 0; nn_sim < 5; nn_sim++) cartas_sim2[nn_sim] = cartas_sim[nn_sim];

            mov_azul_sim = lista_azul[mj];
            aplicar_movimiento_simulado(tablero_sim2, &mov_azul_sim);

            carta_temp_sim  = cartas_sim2[4];
            cartas_sim2[4]  = cartas_sim2[mov_azul_sim.indice_carta];
            cartas_sim2[mov_azul_sim.indice_carta] = carta_temp_sim;

            resultado_sim = comprobar_victoria_sim(tablero_sim2);
            if (resultado_sim == 1) {
                mejor_nivel2_sim = -10000;
                break;
            }

            /* ── NIVEL 3: segunda jugada rojo (solo modo legend) ── */
            if (profundidad_minimax < 3) {
                punt_sim = evaluar_estatico(tablero_sim2, cartas_sim2);
            } else {
				generar_movimientos_rojo(tablero_sim2, cartas_sim2, lista_rojo2, &total_rojo2);

            if (total_rojo2 == 0) {
                punt_sim = evaluar_estatico(tablero_sim2, cartas_sim2);
            } else {
                mejor_nivel3_sim = -30000;

                for (mk = 0; mk < total_rojo2; mk++) {

                    copiar_tablero(tablero_sim2, tablero_sim3);
                    for (nn_sim = 0; nn_sim < 5; nn_sim++) cartas_sim3[nn_sim] = cartas_sim2[nn_sim];

                    mov_rojo2_sim = lista_rojo2[mk];
                    aplicar_movimiento_simulado(tablero_sim3, &mov_rojo2_sim);

                    carta_temp_sim  = cartas_sim3[4];
                    cartas_sim3[4]  = cartas_sim3[mov_rojo2_sim.indice_carta];
                    cartas_sim3[mov_rojo2_sim.indice_carta] = carta_temp_sim;

                    resultado_sim = comprobar_victoria_sim(tablero_sim3);
                    if (resultado_sim == 2) {
                        mejor_nivel3_sim = 10000;
                        break;
                    }

                    punt_sim = evaluar_estatico(tablero_sim3, cartas_sim3);

                    if (punt_sim > mejor_nivel3_sim) {
                        mejor_nivel3_sim = punt_sim;
                    }

                    /* poda alfa */
                    if (mejor_nivel3_sim >= beta_global) break;
                }

                punt_sim = mejor_nivel3_sim;
            }
            } /* cierre if profundidad_minimax */

            if (punt_sim < mejor_nivel2_sim) {
                mejor_nivel2_sim = punt_sim;
                beta_global      = punt_sim;
            }

            /* poda beta */
            if (mejor_nivel2_sim <= alfa_global) break;
        }

        if (mejor_nivel2_sim > mejor_valor) {
            mejor_valor = mejor_nivel2_sim;
            alfa_global = mejor_nivel2_sim;
            mejor_mov   = movimientos_cpu[mi];
        }
    }
}
uint8_t pieza_roja_en_peligro_sim(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py) {

    uint8_t x, y, c, k;

    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {

            if (tablero[y][x] == 3 || tablero[y][x] == 4) {

                for (c = 0; c < 2; c++) {

                    const Carta* carta = cartas[c];

                    for (k = 0; k < carta->cantidad; k++) {

                        int8_t dx = carta->movimientos[k].dx;
                        int8_t dy = carta->movimientos[k].dy;

                        int8_t destino_x = x + dx;
                        int8_t destino_y = y + dy;

                        if (destino_x >= 0 && destino_x < 5 &&
                            destino_y >= 0 && destino_y < 5) {

                            if (destino_x == px && destino_y == py) {
                                return 1;
                            }
                        }
                    }
                }
            }
        }
    }

    return 0;
}

int8_t evaluar_intercambio_basico(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py) {

    uint8_t x, y, c, k;

    // recorrer piezas azules (rival)
    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {

            if (tablero[y][x] == 3 || tablero[y][x] == 4) {

                for (c = 0; c < 2; c++) { // cartas azul

                    const Carta* carta = cartas[c];

                    for (k = 0; k < carta->cantidad; k++) {

                        int8_t dx = carta->movimientos[k].dx;
                        int8_t dy = carta->movimientos[k].dy;

                        int8_t destino_x = x + dx;
                        int8_t destino_y = y + dy;

                        if (destino_x >= 0 && destino_x < 5 &&
                            destino_y >= 0 && destino_y < 5) {

                            // 🔴 rival captura nuestra pieza
                            if (destino_x == px && destino_y == py) {

                                // simular captura rival
                                copiar_tablero(tablero, tablero_intercambio);

                                tablero_intercambio[py][px] = tablero_intercambio[y][x]; // mover pieza azul
                                tablero_intercambio[y][x] = 0;

                                // 🧠 ahora ver si rojo puede recapturar
                                uint8_t rx, ry, rc, rk;

                                for (ry = 0; ry < 5; ry++) {
                                    for (rx = 0; rx < 5; rx++) {

                                        if (tablero_intercambio[ry][rx] == 1 || tablero_intercambio[ry][rx] == 2) {

                                            for (rc = 2; rc < 4; rc++) { // cartas rojas

                                                const Carta* carta_roja = cartas[rc];

                                                for (rk = 0; rk < carta_roja->cantidad; rk++) {

                                                    int8_t rdx = carta_roja->movimientos[rk].dx;
                                                    int8_t rdy = carta_roja->movimientos[rk].dy;

                                                    int8_t rdest_x = rx + rdx;
                                                    int8_t rdest_y = ry + rdy;

                                                    if (rdest_x >= 0 && rdest_x < 5 &&
                                                        rdest_y >= 0 && rdest_y < 5) {

                                                       if (rdest_x == px && rdest_y == py) {
															// simular recaptura roja
															copiar_tablero(tablero_intercambio, tablero_intercambio2);

															tablero_intercambio2[py][px] = tablero_intercambio2[ry][rx]; // mover rojo
															tablero_intercambio2[ry][rx] = 0;

															// 🔍 comprobar si esa pieza puede ser capturada otra vez
															if (pieza_roja_en_peligro_sim(tablero_intercambio2, cartas, px, py)) {
																return 2;
															}

															return 0; // ✔ intercambio limpio
														}
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                return 1; // ❌ no podemos recapturar → malo
                            }
                        }
                    }
                }
            }
        }
    }

    return 0; // nadie captura → OK
}

/************************************************
FUNCIONES DE SONIDO Y EFECTOS
************************************************/
void sfx_mover_pieza(void) {
    NR52_REG = 0x80; /* activar audio */
    NR50_REG = 0x77; /* volumen maximo ambos canales */
    NR51_REG = 0x11; /* canal 1 a ambos altavoces */
    NR10_REG = 0x00; /* sin sweep */
    NR11_REG = 0x80;  /* duty 50%, longitud 0 */
    NR12_REG = 0xA2; /* volumen medio, decae suave */
    NR13_REG = 0x60; /* frecuencia baja (byte bajo) -tono- */
    NR14_REG = 0xC5; /* tono medio, sonido breve -tono-*/
}

void sfx_mover_pieza_rojo(void) {
	NR10_REG = 0x79;
	NR50_REG = 0x77; /* volumen maximo ambos canales */
	NR51_REG = 0x11; /* canal 1 a ambos altavoces */
	NR11_REG = 0x8D;
	NR12_REG = 0xA2;
	NR13_REG = 0xC8;
	NR14_REG = 0x80;	
	
}

void sfx_captura(void) {
    NR52_REG = 0x80;
    NR50_REG = 0x77;
    NR51_REG = 0x11;
    NR10_REG = 0x00;
    NR11_REG = 0x80;
    NR12_REG = 0xF1; /* volumen alto, decae rapido = golpe seco */
    NR13_REG = 0x20;
    NR14_REG = 0xC6;
}

void sfx_victoria(void) {
    NR52_REG = 0x80;
    NR50_REG = 0x77;
    NR51_REG = 0x11;
    NR10_REG = 0x15; /* sweep ascendente suave */
    NR11_REG = 0x80;
    NR12_REG = 0xF3;
    NR13_REG = 0x00;
    NR14_REG = 0xC3;
}

void sfx_derrota(void) {
    NR52_REG = 0x80;
    NR50_REG = 0x77;
    NR51_REG = 0x11;
    NR10_REG = 0x72; /* sweep descendente = tono cae */
    NR11_REG = 0x80;
    NR12_REG = 0xF2;
    NR13_REG = 0x00;
    NR14_REG = 0xC5;
}

void sfx_sable(void) {
    /* primer golpe: tono alto que cae bruscamente */
    NR52_REG = 0x80;
    NR50_REG = 0x77;
    NR51_REG = 0x11;
    NR10_REG = 0x79; /* sweep descendente rapido */
    NR11_REG = 0x40; /* duty 50% */
    NR12_REG = 0xF1; /* volumen maximo, decae rapido */
    NR13_REG = 0x80;
    NR14_REG = 0xC7; /* frecuencia alta = filo del sable */
    delay_frames(8);
    /* segundo golpe: eco mas suave */
    NR10_REG = 0x75;
    NR12_REG = 0x71;
    NR13_REG = 0x40;
    NR14_REG = 0xC6;
    delay_frames(6);
}



/**********************************************
//FUNCION DE DEBUG VISUAL EN EMULADOR EMULICIOUS
//----------------------------------------------*/
/*
void debug_visual(void){
	 EMU_printf("\n ");
    EMU_printf("El valor de modo de juego = %d ",modo_juego); //añadir la variable que sea aquí, al final
}*/

void menu_2players(void){
	vsync();
	set_bkg_data(seleccion_2players_TILE_ORIGIN, seleccion_2players_TILE_COUNT, seleccion_2players_tiles);
	set_bkg_tiles(5, 9, 10, 6, seleccion_2players_map);
	if (_cpu == CGB_TYPE) {	
	set_bkg_attributes(6, 10, 8, 1, atributos_ROJO2);
	set_bkg_attributes(6, 11, 8, 1, atributos_AZUL2);
	set_bkg_attributes(6, 12, 8, 1, atributos_NARANJA);
	set_bkg_attributes(6, 13, 8, 1, atributos_NARANJA);
	}
	move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 106);
	set_sprite_prop(0, 2);
	modo_juego = 3; //por defecto (hotseat).
	while (!((joypad() & J_A) || (joypad() & J_B))) //mientras que no se pulse A (avanzar) o B (para ir atrás)
	{
			if (joypad() & J_DOWN){
				switch (modo_juego){
				case 3:
					modo_juego=4; //cambia a Game Link
					 move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0,  61, 119);  
					set_sprite_prop(0, 4); 
				break;
			}
			delay_frames(16);	//	60 frames = 1 segundo. 16 frames ≈ 266 ms)
			}
			if (joypad() & J_UP){
				switch (modo_juego){
				case 4:
					modo_juego=3; //cambia a hotseat
					move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 106);
					set_sprite_prop(0, 2);
				break;					
			}
			delay_frames(16);		
			}
		vsync();
		}
	if (joypad() & J_A){
		if (modo_juego == 4){
			waitpadup();
			menu_linkgame();
		}
	}
	else if (joypad() & J_B){
		waitpadup();
		seleccionar_modo();	
	}
}

void menu_linkgame(void){
	vsync();
	set_bkg_data(seleccion_link_TILE_ORIGIN, seleccion_link_TILE_COUNT, seleccion_link_tiles);
	set_bkg_tiles(5, 9, 10, 6, seleccion_link_map);

	move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 56, 106);
	set_sprite_prop(0, 2);
	player_is_host = 0;
	while (!((joypad() & J_A) || (joypad() & J_B)))
	{
			if (joypad() & J_DOWN){
					 player_is_host = 1; //(host = 1, se une a partida, azul)
					 move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0,  61, 119);  
					set_sprite_prop(0, 4); 
					delay_frames(16);
			}
			
			if (joypad() & J_UP){	
					player_is_host = 0; //(host = 0, crea partida, rojo)
					move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 56, 106);
					set_sprite_prop(0, 2);
					delay_frames(16);				
			}
		vsync();
		}
	vsync();
	if (joypad() & J_A){
		waitpadup();
	}
	else if (joypad() & J_B){
		waitpadup();
		menu_2players();	
	}
	;
}
/*funciones de cable link
  Basadas en comm.c de la documentacion oficial GBDK.
  El turno alternado garantiza que nunca hay colision:
  cuando uno envia, el otro siempre esta en receive. */

void link_sync_inicial(void) {
    uint8_t n;
    if (player_is_host) {
        for (n = 0; n < 5; n++) {
            _io_out = indices[n];
            send_byte();
            delay_frames(2);
            while (_io_status == IO_SENDING);
            delay_frames(2);
        }
    } else {
        for (n = 0; n < 5; n++) {
            receive_byte();
            while (_io_status == IO_RECEIVING);
            indices[n] = _io_in;
            cartas_partida[n] = mazo[indices[n]];
            delay_frames(2);
        }
    }
}

void link_enviar_movimiento(uint8_t ox, uint8_t oy, uint8_t dx, uint8_t dy, uint8_t carta) {
    _io_out = ox;    send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2); 
    _io_out = oy;   send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
    _io_out = dx;    send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
    _io_out = dy;    send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
    _io_out = carta; send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
}

void link_recibir_movimiento(void) {
    receive_byte(); delay_frames(2); while (_io_status == IO_RECEIVING); link_ox = _io_in; delay_frames(2); 
   receive_byte(); delay_frames(2);  while (_io_status == IO_RECEIVING); link_oy = _io_in; delay_frames(2); 
   receive_byte(); delay_frames(2);  while (_io_status == IO_RECEIVING); link_dx = _io_in; delay_frames(2); 
    receive_byte(); delay_frames(2); while (_io_status == IO_RECEIVING); link_dy = _io_in; delay_frames(2); 
    receive_byte(); delay_frames(2); while (_io_status == IO_RECEIVING); link_carta = _io_in; delay_frames(2); 
     
    /* aplicar movimiento recibido */
    const Carta* temp;
    casillas_tablero[link_dy][link_dx] = casillas_tablero[link_oy][link_ox];
    casillas_tablero[link_oy][link_ox] = 0;
    temp = cartas_partida[4];
    cartas_partida[4] = cartas_partida[link_carta];
    cartas_partida[link_carta] = temp;
    posicion_ejercitos_visual();
	actualizar_cartas_visual();
    comprobar_victoria();
    if (jugador_activo == 0) jugador_activo = 1;
    else if (jugador_activo == 1) jugador_activo = 0;
}
