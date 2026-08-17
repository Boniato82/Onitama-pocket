/*Los archivos .h se usan para todas las declaraciones del juego, como #define, variables tipo uint8_t, funciones y gráficos.
- Se llama al archivo .h desde el principal main.c con #include "main.h". 
- En los .h solo van las declaraciones del proyecto no los demás includes, como #include <gb/gb.h>#include <gb/cgb.h> que siempre van main.c
*/

/*LIMITES DE PALETAS en GBC
8 paletas de 4 colores para fondos en total cargadas a la vez maximo (las paletas para fondo no usan transparencias)
8 paletas de 4 colores para sprites en total cargadas a la vez máximo (1 transparencia + 3 colores)
*/
#include <gbdk/metasprites.h>
#define current_size 5
#define MAX_MOVIMIENTOS_CPU 40 //maximos movimientos a valorar por la CPU

/* === Datos del juego === */
uint8_t i;
uint8_t j;
uint8_t r;
uint8_t k;
uint8_t temp;
uint8_t game_state = 0;
uint16_t contador;
uint8_t hay_ganador =0; //0 = no lo hay, 1 =ganador azul, 2= ganador rojo
uint8_t jugador_activo = 0; //0 = turno azul , 1 = turno rojo
uint8_t estado_anterior_A = 0;
uint8_t input;
uint8_t hay_master_rojo = 0;
uint8_t hay_master_azul = 0;
uint8_t modo_juego; //0 = vs cpu student, 1 = vs cpu master, 2 = vs cpu legend, 3  = 2 jugadores hotseat, 4 = 2 jugadores cable Link.
//uint8_t pieza;
uint8_t destino;

/* ===ATRIBUTOS DE COLOR === */

/* Cursores */
uint8_t cursor_x;
uint8_t cursor_y;
uint8_t px; 
uint8_t py;
uint8_t x; 
uint8_t y;
uint8_t selector_fijo_activo = 0;
uint8_t selector_fijo_x;
uint8_t selector_fijo_y;
uint8_t selecciona_derecha = 0; //cursor de seleccionar cartas. 0 = cartas izquierda / 1 = carta derecha.
/* RNG */
uint16_t rng_seed;

/*---------------------------------------------------------------------------------*/
/*CASILLAS DEL TABLERO*/
/*--------------------------------------------------------------------------------*/
uint8_t posicion_tropa_x;
uint8_t posicion_tropa_y;

const uint8_t casillas_tablero_inicial[5][5] = {
    {1, 1, 2, 1, 1},
    {0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0},
    {3, 3, 4, 3, 3}
};

uint8_t casillas_tablero[5][5] =  //0 = vacia, 1 = peon rojo, 2 = master rojo, 3 = peon azul, 4 = master azul
	{
		{1, 1, 2, 1, 1},   //fila 1 (posición X, Y = 40, 32 )
		{0, 0, 0, 0, 0},   //fila 2 (posición X, Y = 40, 48 )
		{0, 0, 0, 0, 0},   //fila 3 (posición X, Y = 40, 64)
		{0, 0, 0, 0, 0},   //fila 4 (posición X, Y = 40, 80 )
		{3, 3, 4, 3, 3},   //fila 5 (posición X, Y = 40, 96)
	};

/*---------------------------------------------------------------------------------*/
/*LOGICA DE LOS MOVIMIENTOS DE LAS PIEZAS*/
/*--------------------------------------------------------------------------------*/

uint8_t indices[16] = {
    0,1,2,3,4,5,6,7,
    8,9,10,11,12,13,14,15
};

typedef struct {
    int8_t dx;
    int8_t dy;
} Movimiento;

typedef struct {
    uint8_t origen_x;
    uint8_t origen_y;
    uint8_t destino_x;
    uint8_t destino_y;
    uint8_t indice_carta;
} MovimientoCPU;

MovimientoCPU movimientos_cpu[MAX_MOVIMIENTOS_CPU];
uint8_t total_movimientos_cpu = 0;
MovimientoCPU m;
MovimientoCPU movimientos_seguros[40];
MovimientoCPU lista_rojo2[MAX_MOVIMIENTOS_CPU];
MovimientoCPU lista_azul[MAX_MOVIMIENTOS_CPU];
MovimientoCPU mejor_mov;

typedef struct {
    const Movimiento* movimientos;
    uint8_t cantidad;
    const unsigned char* tiles;
    const unsigned char* tiles_invertidos;
} Carta;

const Carta* mazo[16] = {
    &TIGER,
    &DRAGON,
    &ELEPHANT,
    &MONKEY,
    &CRAB,
    &BOAR,
    &MANTIS,
    &CRANE,
    &FROG,
    &GOOSE,
    &HORSE,
    &EEL,
    &RABBIT,
    &ROOSTER,
    &OX,
    &COBRA
};

const Carta* cartas_partida[5]; //0=azul izquierda  1=azul derecha  2=rojo izquierda 3=rojo derecha  4=refuerzo 

const Movimiento carta_tiger[2] = {
		  {0, -2},
		  {0, 1}
		};
	const Carta TIGER = {
	    carta_tiger,
	    2,
	    tiger_tiles,
	    tiger2_tiles
};

const Movimiento carta_dragon[4] = {
		    {2, -1},
		    {-2, -1},
		    {1, 1},
		    {-1, 1}
		};
	const Carta DRAGON = {
	    carta_dragon,
	    4,
	    dragon_tiles,
	    dragon2_tiles
};
	

const Movimiento carta_elephant [4] = {
		    {1, -1},
		    {-1, -1},
		    {1, 0},
		    {-1, 0}
		};
	const Carta ELEPHANT= {
	    carta_elephant,
	    4,
	    elephant_tiles,
	    elephant2_tiles
	};

const Movimiento carta_monkey[4] = {
		    {1, -1},
		    {-1, -1},
		    {1, 1},
		    {-1, 1}
		};
	const Carta MONKEY = {
	    carta_monkey,
	    4,
	    monkey_tiles,
	    monkey2_tiles
	};
	

const Movimiento carta_crab[3] = {
		    {0, -1},
		    {2, 0},
		    {-2, 0}
		};
	const Carta CRAB = {
	    carta_crab,
	    3,
	    crab_tiles,
	    crab2_tiles
	};



const Movimiento carta_boar[3] = {
		   {0, -1},
		    {1, 0},
		    {-1, 0}
		};
	const Carta BOAR = {
	    carta_boar,
	    3,
	    boar_tiles,
	    boar2_tiles
	};

const Movimiento carta_mantis[3] = {
		    {-1, -1},
		    {1, -1},
		    {0, 1}
		};
	const Carta MANTIS = {
	    carta_mantis,
	    3,
	    mantis_tiles,
	    mantis2_tiles
	};

const Movimiento carta_crane[3] = {
		    {0, -1},
		    {-1, 1},
		    {1, 1}
		};
	const Carta CRANE= {
	    carta_crane,
	    3,
	    crane_tiles,
	    crane2_tiles
	};
	
const Movimiento carta_frog[3] = {
		    {-1, -1},
		    {-2, 0},
		    {1, 1}
		};
	const Carta FROG = {
	    carta_frog,
	    3,
	    frog_tiles,
	    frog2_tiles
	};
	
const Movimiento carta_goose[4] = {
		    {-1, -1},
		    {-1, 0},
		    {1, 0},
		    {1, 1}
		};
	const Carta GOOSE = {
	    carta_goose,
	    4,
	    goose_tiles,
	    goose2_tiles
	};
	

const Movimiento carta_horse[3] = {
		{0, -1},
		{-1, 0},
		{0, 1}
		};
	const Carta HORSE = {
	    carta_horse,
	    3,
	    horse_tiles,
	    horse2_tiles
	};
	
const Movimiento carta_eel[3] = {
		{-1, -1},
		{1, 0},
		{-1, 1}
		};
	const Carta EEL = {
	    carta_eel,
	    3,
	    eel_tiles,
	    eel2_tiles
	};
	

const Movimiento carta_rabbit[3] = {
		{1, -1},
		{2, 0},
		{-1, 1}
		};
	const Carta RABBIT= {
	    carta_rabbit,
	    3,
	    rabbit_tiles,
	    rabbit2_tiles
	};

const Movimiento carta_rooster[4] = {
		{1, -1},
		{1, 0},
		{-1, 0},
		{-1, 1}
		};
	const Carta ROOSTER = {
	    carta_rooster,
	    4,
	    rooster_tiles,
	    rooster2_tiles
	};
	
const Movimiento carta_ox[3] = {
		{0, -1},
		{1, 0},
		{0, 1}
		};
	const Carta OX = {
	    carta_ox,
	    3,
	    ox_tiles,
	    ox2_tiles
	};
	
const Movimiento carta_cobra[3] = {
		{1, -1},
		{-1, 0},
		{1, 1}
		};
	const Carta COBRA = {
	    carta_cobra,
	    3,
	    cobra_tiles,
	    cobra2_tiles
	};
	

/*Declaración de las funciones del juego*/
void intro(void);
void seleccionar_modo(void);
void pantalla_titulo(void);
void menu_2players(void);
void menu_linkgame(void);
void inicio_partida(void);
void calculate_sums(void);
void print_board(void);
void handle_input(void);
void seleccion_nivel(void);
void init_cgb(void);
void juego(void);
void mezclar_indices(uint8_t* array, uint8_t size);
void comprobar_victoria(void);

/*FUNCIONES DE MOVIMIENTO Y COMPROBACIÓN DE CASILLAS VALIDAS*/
const Carta* carta_actual;
uint8_t origen_x, origen_y, destino_x, destino_y;
uint8_t jugador_activo;
uint8_t indice_carta_usada;
uint8_t movimiento_valido(
    uint8_t origen_x,
    uint8_t origen_y,
    uint8_t destino_x,
    uint8_t destino_y,
    const Carta* carta_actual,
    uint8_t jugador_activo
);
uint8_t pieza_seleccionada = 0;
uint8_t pieza;
uint8_t tile_x;
uint8_t tile_y;
void procesar_seleccion(void);
void actualizar_cartas_visual(void);

/*FUNCIONES Y VARIABLES RELACIONADAS CON LOS MODOS DE JUEGO Y LA IA*/
uint8_t cpu_ha_jugado = 0;
uint8_t turno_de_juego;
uint8_t es_turno_cpu(void);
void ejecutar_turno_cpu(void);
uint8_t profundidad_minimax;
uint8_t encontrado;
uint8_t master_rojo_en_paligro(void);
int8_t mx;
int8_t my;
uint8_t total_seguros = 0;
uint8_t peligro_actual;
uint8_t peligro_despues_sim;
void copiar_tablero(uint8_t origen[5][5], uint8_t destino[5][5]);
uint8_t comprobar_victoria_sim(uint8_t tablero[5][5]);
uint8_t master_rojo_en_peligro_sim(uint8_t tablero[5][5], const Carta* cartas[5]);
uint8_t puede_capturar_siguiente_turno(uint8_t tablero[5][5], MovimientoCPU* mov, const Carta* cartas[5]);
uint8_t puede_llegar_templo_siguiente_turno(uint8_t x, uint8_t y, const Carta* carta);
void aplicar_movimiento_simulado(uint8_t tablero_mov_sim[5][5], MovimientoCPU* mov);
uint8_t rival_puede_ganar_templo_con_carta(uint8_t tablero[5][5], const Carta* carta);
int16_t evaluar_respuesta_rival_simple(uint8_t tablero[5][5], const Carta* cartas_partida[]);
uint8_t pieza_roja_en_peligro_sim(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py);
int8_t evaluar_intercambio_basico(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py);
uint8_t pieza_roja_defendida(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py);
uint8_t cohesion_roja(uint8_t tablero[5][5], int8_t px, int8_t py);
int8_t evaluar_ventaja(uint8_t tablero[5][5]);
uint8_t pieza_azul_aislada(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py);
int8_t distancia_a_aislada(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py);
void generar_movimientos_azul(uint8_t tablero[5][5], const Carta* cartas[5], MovimientoCPU* lista, uint8_t* total);
int16_t evaluar_estatico(uint8_t tablero[5][5], const Carta* cartas_sim[5]);
uint8_t tablero_intercambio[5][5];
uint8_t tablero_intercambio2[5][5];
void ejecutar_minimax(void);
uint8_t tablero_sim[5][5];
uint8_t tablero_sim2[5][5];
uint8_t tablero_sim3[5][5];
int16_t valor =0;
int16_t mejor_valor;
int16_t alfa_global;
int16_t beta_global;
uint8_t total_rojo2;
uint8_t total_azul;
uint8_t era_captura;
uint8_t era_captura_cpu;
/* variables globales para minimax - evitar stack en Z80 */
const Carta* cartas_sim[5];
const Carta* cartas_sim2[5];
const Carta* cartas_sim3[5];
const Carta* carta_temp_sim;
MovimientoCPU mov_azul_sim;
MovimientoCPU mov_rojo2_sim;
int16_t punt_sim;
int16_t mejor_nivel2_sim;
int16_t mejor_nivel3_sim;
uint8_t resultado_sim;
uint8_t nn_sim;
uint8_t ord_i;
uint8_t ord_j;
uint8_t ord_pieza;
uint8_t ord_destino;
int8_t  prioridades[MAX_MOVIMIENTOS_CPU];
MovimientoCPU ord_temp_mov;
int8_t  ord_temp_pri;
/* variables globales para generar_movimientos - evitar stack */
int8_t gen_dx;
int8_t gen_dy;
uint8_t gen_destino_x;
uint8_t gen_destino_y;
uint8_t gen_destino_pieza;
const Carta* gen_carta;
uint8_t gen_cantidad;
uint8_t cantidad;
uint8_t pieza_destino;
uint8_t es_captura;
int8_t dx, dy;
uint8_t otra_carta_index;
int16_t peor_ataque;
int8_t mx_local;
int8_t my_local;
uint8_t copiar_tablero_x;
uint8_t copiar_tablero_y;
uint8_t hay_master_rojo_sim;
uint8_t hay_master_azul_sim;
uint8_t x_sim, y_sim;
int8_t destino_x_peligro;
int8_t destino_y_peligro;
uint8_t pieza_mov_sim;   
uint8_t k_puede_llegar_templo;
uint8_t pieza_en_peligro;
int8_t mal_intercambio;
/*funciones de limpieza y reseteo del juego*/
void reset_rng(void);
void reseteo_juego(void);
void final_partida(void);
/*funciones de paletas y tiles*/
void cargar_graficos_juego(void);
void aplicar_paletas_juego(void);
void set_sprites_palette(void);
void actualizar_cursores(void);
void cargar_elementos(void);
void cargar_cursores(void);
void posicion_ejercitos_visual(void);
void pos_inicial_cursor(void);

/*funciones de sonido*/
void sfx_mover_pieza(void);
void sfx_captura(void);
void sfx_victoria(void);
void sfx_derrota(void);
void sfx_sable(void);
void sfx_mover_pieza_rojo(void);

/*funciones de debug*/
void debug_visual(void);

/*Game link********************
*********************/
uint8_t player_is_host = 0;
uint8_t es_mi_turno = 0; //0 no lo es, 1 si lo es.
/* buffer del movimiento recibido por link */
uint8_t link_ox;
uint8_t link_oy;
uint8_t link_dx;
uint8_t link_dy;
uint8_t link_carta;

/* prototipos link */
void link_enviar_movimiento(uint8_t ox, uint8_t oy, uint8_t dx, uint8_t dy, uint8_t carta);
void link_recibir_movimiento(void);
void link_sync_inicial(void);
