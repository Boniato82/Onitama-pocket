;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (Linux)
;--------------------------------------------------------
	.module Onitama
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ordenar_movimientos_cpu
	.globl _generar_movimientos_rojo
	.globl _main
	.globl _delay_frames
	.globl _rand
	.globl _initrand
	.globl _cls
	.globl _puts
	.globl _cpu_fast
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _fill_bkg_rect
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _vsync
	.globl _set_interrupts
	.globl _waitpadup
	.globl _joypad
	.globl _receive_byte
	.globl _send_byte
	.globl _nowait_int_handler
	.globl _add_SIO
	.globl _es_mi_turno
	.globl _player_is_host
	.globl _valor
	.globl _total_seguros
	.globl _cpu_ha_jugado
	.globl _pieza_seleccionada
	.globl _jugador_activo
	.globl _mazo
	.globl _total_movimientos_cpu
	.globl _indices
	.globl _casillas_tablero
	.globl _selecciona_derecha
	.globl _selector_fijo_activo
	.globl _hay_master_azul
	.globl _hay_master_rojo
	.globl _estado_anterior_A
	.globl _hay_ganador
	.globl _game_state
	.globl _atributos_RED_WINS
	.globl _atributos_BLUE_WINS
	.globl _atributos_FONDO_CARTA_VACIO
	.globl _atributos_CARTA_LATERAL_ROJA
	.globl _atributos_CARTA_LATERAL_AZUL
	.globl _atributos_CARTAS_ROJO
	.globl _atributos_CARTAS_AZUL
	.globl _atributos_NARANJA
	.globl _atributos_VERDE
	.globl _atributos_ROJO2
	.globl _atributos_AZUL2
	.globl _atributos_AZUL
	.globl _atributos_ROJO
	.globl _link_carta
	.globl _link_dy
	.globl _link_dx
	.globl _link_oy
	.globl _link_ox
	.globl _mal_intercambio
	.globl _pieza_en_peligro
	.globl _k_puede_llegar_templo
	.globl _pieza_mov_sim
	.globl _destino_y_peligro
	.globl _destino_x_peligro
	.globl _y_sim
	.globl _x_sim
	.globl _hay_master_azul_sim
	.globl _hay_master_rojo_sim
	.globl _copiar_tablero_y
	.globl _copiar_tablero_x
	.globl _my_local
	.globl _mx_local
	.globl _peor_ataque
	.globl _otra_carta_index
	.globl _dy
	.globl _dx
	.globl _es_captura
	.globl _pieza_destino
	.globl _cantidad
	.globl _gen_cantidad
	.globl _gen_carta
	.globl _gen_destino_pieza
	.globl _gen_destino_y
	.globl _gen_destino_x
	.globl _gen_dy
	.globl _gen_dx
	.globl _ord_temp_pri
	.globl _ord_temp_mov
	.globl _prioridades
	.globl _ord_destino
	.globl _ord_pieza
	.globl _ord_j
	.globl _ord_i
	.globl _nn_sim
	.globl _resultado_sim
	.globl _mejor_nivel3_sim
	.globl _mejor_nivel2_sim
	.globl _punt_sim
	.globl _mov_rojo2_sim
	.globl _mov_azul_sim
	.globl _carta_temp_sim
	.globl _cartas_sim3
	.globl _cartas_sim2
	.globl _cartas_sim
	.globl _era_captura_cpu
	.globl _era_captura
	.globl _total_azul
	.globl _total_rojo2
	.globl _beta_global
	.globl _alfa_global
	.globl _mejor_valor
	.globl _tablero_sim3
	.globl _tablero_sim2
	.globl _tablero_sim
	.globl _tablero_intercambio2
	.globl _tablero_intercambio
	.globl _peligro_despues_sim
	.globl _peligro_actual
	.globl _my
	.globl _mx
	.globl _encontrado
	.globl _profundidad_minimax
	.globl _turno_de_juego
	.globl _tile_y
	.globl _tile_x
	.globl _pieza
	.globl _indice_carta_usada
	.globl _destino_y
	.globl _destino_x
	.globl _origen_y
	.globl _origen_x
	.globl _carta_actual
	.globl _cartas_partida
	.globl _mejor_mov
	.globl _lista_azul
	.globl _lista_rojo2
	.globl _movimientos_seguros
	.globl _m
	.globl _movimientos_cpu
	.globl _posicion_tropa_y
	.globl _posicion_tropa_x
	.globl _rng_seed
	.globl _selector_fijo_y
	.globl _selector_fijo_x
	.globl _y
	.globl _x
	.globl _py
	.globl _px
	.globl _cursor_y
	.globl _cursor_x
	.globl _destino
	.globl _modo_juego
	.globl _input
	.globl _contador
	.globl _temp
	.globl _k
	.globl _r
	.globl _j
	.globl _i
	.globl _sprite_cursor_carta_pal
	.globl _sprite_cursor_pal
	.globl _azul
	.globl _rojo
	.globl _fondo_carta_vacio
	.globl _cartas_rojo_pal
	.globl _cartas_azul_pal
	.globl _fondo_pal
	.globl _sprite_modo_pal_azul
	.globl _sprite_modo_pal_naranja
	.globl _sprite_modo_pal_verde
	.globl _sprite_modo_pal_rojo
	.globl _sprite_modo_pal
	.globl _rojo2_pal
	.globl _azul2_pal
	.globl _naranja_pal
	.globl _verde_pal
	.globl _azul_pal
	.globl _rojo_pal
	.globl _titulo_pal
	.globl _pal_bkg_white
	.globl _sprite_linea_metasprites
	.globl _sprite_linea_metasprite0
	.globl _sprite_linea_tiles
	.globl _sprite_selector_carta_metasprites
	.globl _sprite_selector_carta_metasprite0
	.globl _sprite_selector_carta_tiles
	.globl _sprite_selector_metasprites
	.globl _sprite_selector_metasprite0
	.globl _sprite_selector_tiles
	.globl _cobra2_tiles
	.globl _cobra_tiles
	.globl _ox2_tiles
	.globl _ox_tiles
	.globl _rooster2_tiles
	.globl _rooster_tiles
	.globl _rabbit2_tiles
	.globl _rabbit_tiles
	.globl _eel2_tiles
	.globl _eel_tiles
	.globl _horse2_tiles
	.globl _horse_tiles
	.globl _goose2_tiles
	.globl _goose_tiles
	.globl _frog2_tiles
	.globl _frog_tiles
	.globl _mantis2_tiles
	.globl _mantis_tiles
	.globl _boar2_tiles
	.globl _boar_tiles
	.globl _crane2_tiles
	.globl _crane_tiles
	.globl _monkey2_tiles
	.globl _monkey_tiles
	.globl _elephant2_tiles
	.globl _elephant_tiles
	.globl _crab2_tiles
	.globl _crab_tiles
	.globl _dragon2_tiles
	.globl _dragon_tiles
	.globl _tiger2_tiles
	.globl _tiger_tiles
	.globl _carta_map
	.globl _master_azul_map
	.globl _master_azul_tiles
	.globl _peon_azul_map
	.globl _peon_azul_tiles
	.globl _master_rojo_map
	.globl _master_rojo_tiles
	.globl _peon_rojo_map
	.globl _peon_rojo_tiles
	.globl _wins_map
	.globl _red_wins_tiles
	.globl _blue_wins_tiles
	.globl _fondo_vacio_carta_map
	.globl _fondo_vacio_carta_tiles
	.globl _fondo_vacio_map
	.globl _fondo_vacio_tiles
	.globl _fondo_map
	.globl _fondo_tiles
	.globl _sprite_selector_modo_metasprites
	.globl _sprite_selector_modo_metasprite0
	.globl _sprite_selector_modo_tiles
	.globl _seleccion_link_map
	.globl _seleccion_link_tiles
	.globl _seleccion_2players_map
	.globl _seleccion_2players_tiles
	.globl _seleccion_modo_map
	.globl _seleccion_modo_tiles
	.globl _titulo_map
	.globl _titulo_tiles
	.globl _COBRA
	.globl _carta_cobra
	.globl _OX
	.globl _carta_ox
	.globl _ROOSTER
	.globl _carta_rooster
	.globl _RABBIT
	.globl _carta_rabbit
	.globl _EEL
	.globl _carta_eel
	.globl _HORSE
	.globl _carta_horse
	.globl _GOOSE
	.globl _carta_goose
	.globl _FROG
	.globl _carta_frog
	.globl _CRANE
	.globl _carta_crane
	.globl _MANTIS
	.globl _carta_mantis
	.globl _BOAR
	.globl _carta_boar
	.globl _CRAB
	.globl _carta_crab
	.globl _MONKEY
	.globl _carta_monkey
	.globl _ELEPHANT
	.globl _carta_elephant
	.globl _DRAGON
	.globl _carta_dragon
	.globl _TIGER
	.globl _carta_tiger
	.globl _casillas_tablero_inicial
	.globl _cargar_graficos_juego
	.globl _aplicar_paletas_juego
	.globl _cargar_elementos
	.globl _actualizar_cartas_visual
	.globl _posicion_ejercitos_visual
	.globl _cargar_cursores
	.globl _init_cgb
	.globl _intro
	.globl _pantalla_titulo
	.globl _seleccionar_modo
	.globl _inicio_partida
	.globl _mezclar_indices
	.globl _juego
	.globl _handle_input
	.globl _movimiento_valido
	.globl _actualizar_cursores
	.globl _procesar_seleccion
	.globl _comprobar_victoria
	.globl _es_turno_cpu
	.globl _reseteo_juego
	.globl _ejecutar_turno_cpu
	.globl _aplicar_movimiento_simulado
	.globl _master_rojo_en_peligro_sim
	.globl _copiar_tablero
	.globl _comprobar_victoria_sim
	.globl _rival_puede_ganar_templo_con_carta
	.globl _generar_movimientos_azul
	.globl _evaluar_estatico
	.globl _ejecutar_minimax
	.globl _pieza_roja_en_peligro_sim
	.globl _evaluar_intercambio_basico
	.globl _sfx_mover_pieza
	.globl _sfx_mover_pieza_rojo
	.globl _sfx_captura
	.globl _sfx_victoria
	.globl _sfx_derrota
	.globl _sfx_sable
	.globl _menu_2players
	.globl _menu_linkgame
	.globl _link_sync_inicial
	.globl _link_enviar_movimiento
	.globl _link_recibir_movimiento
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_i::
	.ds 1
_j::
	.ds 1
_r::
	.ds 1
_k::
	.ds 1
_temp::
	.ds 1
_contador::
	.ds 2
_input::
	.ds 1
_modo_juego::
	.ds 1
_destino::
	.ds 1
_cursor_x::
	.ds 1
_cursor_y::
	.ds 1
_px::
	.ds 1
_py::
	.ds 1
_x::
	.ds 1
_y::
	.ds 1
_selector_fijo_x::
	.ds 1
_selector_fijo_y::
	.ds 1
_rng_seed::
	.ds 2
_posicion_tropa_x::
	.ds 1
_posicion_tropa_y::
	.ds 1
_movimientos_cpu::
	.ds 200
_m::
	.ds 5
_movimientos_seguros::
	.ds 200
_lista_rojo2::
	.ds 200
_lista_azul::
	.ds 200
_mejor_mov::
	.ds 5
_cartas_partida::
	.ds 10
_carta_actual::
	.ds 2
_origen_x::
	.ds 1
_origen_y::
	.ds 1
_destino_x::
	.ds 1
_destino_y::
	.ds 1
_indice_carta_usada::
	.ds 1
_pieza::
	.ds 1
_tile_x::
	.ds 1
_tile_y::
	.ds 1
_turno_de_juego::
	.ds 1
_profundidad_minimax::
	.ds 1
_encontrado::
	.ds 1
_mx::
	.ds 1
_my::
	.ds 1
_peligro_actual::
	.ds 1
_peligro_despues_sim::
	.ds 1
_tablero_intercambio::
	.ds 25
_tablero_intercambio2::
	.ds 25
_tablero_sim::
	.ds 25
_tablero_sim2::
	.ds 25
_tablero_sim3::
	.ds 25
_mejor_valor::
	.ds 2
_alfa_global::
	.ds 2
_beta_global::
	.ds 2
_total_rojo2::
	.ds 1
_total_azul::
	.ds 1
_era_captura::
	.ds 1
_era_captura_cpu::
	.ds 1
_cartas_sim::
	.ds 10
_cartas_sim2::
	.ds 10
_cartas_sim3::
	.ds 10
_carta_temp_sim::
	.ds 2
_mov_azul_sim::
	.ds 5
_mov_rojo2_sim::
	.ds 5
_punt_sim::
	.ds 2
_mejor_nivel2_sim::
	.ds 2
_mejor_nivel3_sim::
	.ds 2
_resultado_sim::
	.ds 1
_nn_sim::
	.ds 1
_ord_i::
	.ds 1
_ord_j::
	.ds 1
_ord_pieza::
	.ds 1
_ord_destino::
	.ds 1
_prioridades::
	.ds 40
_ord_temp_mov::
	.ds 5
_ord_temp_pri::
	.ds 1
_gen_dx::
	.ds 1
_gen_dy::
	.ds 1
_gen_destino_x::
	.ds 1
_gen_destino_y::
	.ds 1
_gen_destino_pieza::
	.ds 1
_gen_carta::
	.ds 2
_gen_cantidad::
	.ds 1
_cantidad::
	.ds 1
_pieza_destino::
	.ds 1
_es_captura::
	.ds 1
_dx::
	.ds 1
_dy::
	.ds 1
_otra_carta_index::
	.ds 1
_peor_ataque::
	.ds 2
_mx_local::
	.ds 1
_my_local::
	.ds 1
_copiar_tablero_x::
	.ds 1
_copiar_tablero_y::
	.ds 1
_hay_master_rojo_sim::
	.ds 1
_hay_master_azul_sim::
	.ds 1
_x_sim::
	.ds 1
_y_sim::
	.ds 1
_destino_x_peligro::
	.ds 1
_destino_y_peligro::
	.ds 1
_pieza_mov_sim::
	.ds 1
_k_puede_llegar_templo::
	.ds 1
_pieza_en_peligro::
	.ds 1
_mal_intercambio::
	.ds 1
_link_ox::
	.ds 1
_link_oy::
	.ds 1
_link_dx::
	.ds 1
_link_dy::
	.ds 1
_link_carta::
	.ds 1
_atributos_ROJO::
	.ds 22
_atributos_AZUL::
	.ds 22
_atributos_AZUL2::
	.ds 8
_atributos_ROJO2::
	.ds 8
_atributos_VERDE::
	.ds 8
_atributos_NARANJA::
	.ds 8
_atributos_CARTAS_AZUL::
	.ds 40
_atributos_CARTAS_ROJO::
	.ds 40
_atributos_CARTA_LATERAL_AZUL::
	.ds 16
_atributos_CARTA_LATERAL_ROJA::
	.ds 16
_atributos_FONDO_CARTA_VACIO::
	.ds 16
_atributos_BLUE_WINS::
	.ds 24
_atributos_RED_WINS::
	.ds 24
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_game_state::
	.ds 1
_hay_ganador::
	.ds 1
_estado_anterior_A::
	.ds 1
_hay_master_rojo::
	.ds 1
_hay_master_azul::
	.ds 1
_selector_fijo_activo::
	.ds 1
_selecciona_derecha::
	.ds 1
_casillas_tablero::
	.ds 25
_indices::
	.ds 16
_total_movimientos_cpu::
	.ds 1
_mazo::
	.ds 32
_jugador_activo::
	.ds 1
_pieza_seleccionada::
	.ds 1
_cpu_ha_jugado::
	.ds 1
_total_seguros::
	.ds 1
_valor::
	.ds 2
_player_is_host::
	.ds 1
_es_mi_turno::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;Onitama.c:20: void cargar_graficos_juego(void){
;	---------------------------------
; Function cargar_graficos_juego
; ---------------------------------
_cargar_graficos_juego::
;Onitama.c:21: aplicar_paletas_juego();
	call	_aplicar_paletas_juego
;Onitama.c:22: cargar_elementos();
	call	_cargar_elementos
;Onitama.c:23: posicion_ejercitos_visual();
	call	_posicion_ejercitos_visual
;Onitama.c:24: cargar_cursores();
;Onitama.c:26: }
	jp	_cargar_cursores
_casillas_tablero_inicial:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
_carta_tiger:
	.db #0x00	;  0
	.db #0xfe	; -2
	.db #0x00	;  0
	.db #0x01	;  1
_TIGER:
	.dw _carta_tiger
	.db #0x02	; 2
	.dw _tiger_tiles
	.dw _tiger2_tiles
_carta_dragon:
	.db #0x02	;  2
	.db #0xff	; -1
	.db #0xfe	; -2
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0x01	;  1
_DRAGON:
	.dw _carta_dragon
	.db #0x04	; 4
	.dw _dragon_tiles
	.dw _dragon2_tiles
_carta_elephant:
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x00	;  0
_ELEPHANT:
	.dw _carta_elephant
	.db #0x04	; 4
	.dw _elephant_tiles
	.dw _elephant2_tiles
_carta_monkey:
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0x01	;  1
_MONKEY:
	.dw _carta_monkey
	.db #0x04	; 4
	.dw _monkey_tiles
	.dw _monkey2_tiles
_carta_crab:
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x02	;  2
	.db #0x00	;  0
	.db #0xfe	; -2
	.db #0x00	;  0
_CRAB:
	.dw _carta_crab
	.db #0x03	; 3
	.dw _crab_tiles
	.dw _crab2_tiles
_carta_boar:
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x00	;  0
_BOAR:
	.dw _carta_boar
	.db #0x03	; 3
	.dw _boar_tiles
	.dw _boar2_tiles
_carta_mantis:
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0x01	;  1
_MANTIS:
	.dw _carta_mantis
	.db #0x03	; 3
	.dw _mantis_tiles
	.dw _mantis2_tiles
_carta_crane:
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
_CRANE:
	.dw _carta_crane
	.db #0x03	; 3
	.dw _crane_tiles
	.dw _crane2_tiles
_carta_frog:
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xfe	; -2
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
_FROG:
	.dw _carta_frog
	.db #0x03	; 3
	.dw _frog_tiles
	.dw _frog2_tiles
_carta_goose:
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
_GOOSE:
	.dw _carta_goose
	.db #0x04	; 4
	.dw _goose_tiles
	.dw _goose2_tiles
_carta_horse:
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
_HORSE:
	.dw _carta_horse
	.db #0x03	; 3
	.dw _horse_tiles
	.dw _horse2_tiles
_carta_eel:
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x01	;  1
_EEL:
	.dw _carta_eel
	.db #0x03	; 3
	.dw _eel_tiles
	.dw _eel2_tiles
_carta_rabbit:
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0x02	;  2
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x01	;  1
_RABBIT:
	.dw _carta_rabbit
	.db #0x03	; 3
	.dw _rabbit_tiles
	.dw _rabbit2_tiles
_carta_rooster:
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x01	;  1
_ROOSTER:
	.dw _carta_rooster
	.db #0x04	; 4
	.dw _rooster_tiles
	.dw _rooster2_tiles
_carta_ox:
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
_OX:
	.dw _carta_ox
	.db #0x03	; 3
	.dw _ox_tiles
	.dw _ox2_tiles
_carta_cobra:
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
_COBRA:
	.dw _carta_cobra
	.db #0x03	; 3
	.dw _cobra_tiles
	.dw _cobra2_tiles
_titulo_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xf1	; 241
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xf1	; 241
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xdc	; 220
	.db #0x00	; 0
	.db #0x9c	; 156
	.db #0x00	; 0
	.db #0x9c	; 156
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0x00	; 0
	.db #0xe6	; 230
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xbc	; 188
	.db #0x00	; 0
	.db #0x9c	; 156
	.db #0x00	; 0
	.db #0x9c	; 156
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf1	; 241
	.db #0x00	; 0
	.db #0xf1	; 241
	.db #0x00	; 0
	.db #0xf1	; 241
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xec	; 236
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf9	; 249
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x8b	; 139
	.db #0x94	; 148
	.db #0x9d	; 157
	.db #0xa2	; 162
	.db #0x9e	; 158
	.db #0xa1	; 161
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xe8	; 232
	.db #0x14	; 20
	.db #0xdc	; 220
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbe	; 190
	.db #0xc1	; 193
	.db #0x9e	; 158
	.db #0xa1	; 161
	.db #0x9d	; 157
	.db #0xa2	; 162
	.db #0x8b	; 139
	.db #0x94	; 148
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x81	; 129
	.db #0x86	; 134
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x3e	; 62
	.db #0xc1	; 193
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0xdc	; 220
	.db #0x22	; 34
	.db #0xe8	; 232
	.db #0x14	; 20
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x83	; 131
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x86	; 134
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x94	; 148
	.db #0x8b	; 139
	.db #0xa2	; 162
	.db #0x9d	; 157
	.db #0xa1	; 161
	.db #0x9e	; 158
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x14	; 20
	.db #0xe8	; 232
	.db #0x22	; 34
	.db #0xdc	; 220
	.db #0xc2	; 194
	.db #0x3c	; 60
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x84	; 132
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0xbe	; 190
	.db #0xa1	; 161
	.db #0x9e	; 158
	.db #0xa2	; 162
	.db #0x9d	; 157
	.db #0x94	; 148
	.db #0x8b	; 139
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x86	; 134
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc1	; 193
	.db #0x3e	; 62
	.db #0xc2	; 194
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0xdc	; 220
	.db #0x14	; 20
	.db #0xe8	; 232
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa3	; 163
	.db #0xa3	; 163
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xae	; 174
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_titulo_map:
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x66	; 102	'f'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x64	; 100	'd'
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x64	; 100	'd'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x64	; 100	'd'
	.db #0x70	; 112	'p'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x71	; 113	'q'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x72	; 114	'r'
	.db #0x64	; 100	'd'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x64	; 100	'd'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x7d	; 125
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x77	; 119	'w'
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x9e	; 158
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xa1	; 161
	.db #0xa2	; 162
	.db #0xa2	; 162
	.db #0xa3	; 163
	.db #0xa4	; 164
	.db #0xa5	; 165
	.db #0xa6	; 166
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0xa9	; 169
	.db #0xaa	; 170
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0xad	; 173
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xb0	; 176
	.db #0xb1	; 177
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb5	; 181
	.db #0xb6	; 182
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xbb	; 187
	.db #0xbc	; 188
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xb2	; 178
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xb8	; 184
	.db #0xc1	; 193
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xc2	; 194
	.db #0xc3	; 195
_seleccion_modo_tiles:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc9	; 201
	.db #0xc9	; 201
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x8b	; 139
	.db #0x8b	; 139
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0xc9	; 201
	.db #0xc9	; 201
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x6c	; 108	'l'
	.db #0x6c	; 108	'l'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0x9e	; 158
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x9e	; 158
	.db #0x9e	; 158
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xe4	; 228
	.db #0xe4	; 228
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x8a	; 138
	.db #0x8a	; 138
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0xe1	; 225
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0xe1	; 225
	.db #0xe1	; 225
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
_seleccion_modo_map:
	.db #0xc4	; 196
	.db #0xc5	; 197
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0xcc	; 204
	.db #0xcd	; 205
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xd1	; 209
	.db #0xd8	; 216
	.db #0xd9	; 217
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xd7	; 215
	.db #0xce	; 206
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xd7	; 215
	.db #0xce	; 206
	.db #0xdd	; 221
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe3	; 227
	.db #0xe4	; 228
	.db #0xd7	; 215
	.db #0xe5	; 229
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xe7	; 231
_seleccion_2players_tiles:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x86	; 134
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0xc9	; 201
	.db #0xc9	; 201
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xe4	; 228
	.db #0xe4	; 228
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0xd2	; 210
	.db #0xd2	; 210
	.db #0xb3	; 179
	.db #0xb3	; 179
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0xe1	; 225
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xb3	; 179
	.db #0xb3	; 179
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0xf2	; 242
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0xca	; 202
	.db #0xca	; 202
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0x9e	; 158
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x9e	; 158
	.db #0x9e	; 158
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
_seleccion_2players_map:
	.db #0xc4	; 196
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0xcc	; 204
	.db #0xcd	; 205
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xc7	; 199
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xd8	; 216
	.db #0xd0	; 208
	.db #0xc7	; 199
	.db #0xd9	; 217
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xdd	; 221
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0xc7	; 199
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe3	; 227
_seleccion_link_tiles:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0xc6	; 198
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x4f	; 79	'O'
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0xc9	; 201
	.db #0xc9	; 201
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe5	; 229
	.db #0xe5	; 229
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4e	; 78	'N'
	.db #0x4e	; 78	'N'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x4f	; 79	'O'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x93	; 147
	.db #0x93	; 147
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0xe1	; 225
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xb3	; 179
	.db #0xb3	; 179
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0xf2	; 242
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0xca	; 202
	.db #0xca	; 202
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0x9e	; 158
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x9e	; 158
	.db #0x9e	; 158
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
_seleccion_link_map:
	.db #0xc4	; 196
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc5	; 197
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0xcc	; 204
	.db #0xcd	; 205
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xc7	; 199
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xd8	; 216
	.db #0xd0	; 208
	.db #0xc7	; 199
	.db #0xd9	; 217
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xdd	; 221
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0xc7	; 199
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe2	; 226
	.db #0xe3	; 227
_sprite_selector_modo_tiles:
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_sprite_selector_modo_metasprite0:
	.db #0xfc	; -4
	.db #0xfc	; -4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_sprite_selector_modo_metasprites:
	.dw _sprite_selector_modo_metasprite0
_fondo_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_fondo_map:
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
_fondo_vacio_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_fondo_vacio_map:
	.db #0xe4	; 228
	.db #0xe5	; 229
	.db #0xe6	; 230
	.db #0xe7	; 231
_fondo_vacio_carta_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_fondo_vacio_carta_map:
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xe8	; 232
_blue_wins_tiles:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdc	; 220
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0x5c	; 92
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xed	; 237
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
_red_wins_tiles:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0xed	; 237
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xed	; 237
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0xed	; 237
	.db #0x00	; 0
	.db #0xed	; 237
	.db #0x00	; 0
	.db #0xec	; 236
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdc	; 220
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0x5c	; 92
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xed	; 237
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
_wins_map:
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xd8	; 216
	.db #0xd9	; 217
	.db #0xd4	; 212
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xdd	; 221
	.db #0xd9	; 217
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe3	; 227
_peon_rojo_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_peon_rojo_map:
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
_master_rojo_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x8b	; 139
	.db #0x94	; 148
	.db #0x9d	; 157
	.db #0xa2	; 162
	.db #0x9e	; 158
	.db #0xa1	; 161
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xe8	; 232
	.db #0x14	; 20
	.db #0xdc	; 220
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0xbe	; 190
	.db #0xc1	; 193
	.db #0x9e	; 158
	.db #0xa1	; 161
	.db #0x9d	; 157
	.db #0xa2	; 162
	.db #0x8b	; 139
	.db #0x94	; 148
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x81	; 129
	.db #0x86	; 134
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x3e	; 62
	.db #0xc1	; 193
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0xdc	; 220
	.db #0x22	; 34
	.db #0xe8	; 232
	.db #0x14	; 20
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
_master_rojo_map:
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
_peon_azul_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x83	; 131
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x8f	; 143
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x84	; 132
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_peon_azul_map:
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
_master_azul_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x86	; 134
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x94	; 148
	.db #0x8b	; 139
	.db #0xa2	; 162
	.db #0x9d	; 157
	.db #0xa1	; 161
	.db #0x9e	; 158
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x14	; 20
	.db #0xe8	; 232
	.db #0x22	; 34
	.db #0xdc	; 220
	.db #0xc2	; 194
	.db #0x3c	; 60
	.db #0xc1	; 193
	.db #0xbe	; 190
	.db #0xa1	; 161
	.db #0x9e	; 158
	.db #0xa2	; 162
	.db #0x9d	; 157
	.db #0x94	; 148
	.db #0x8b	; 139
	.db #0x88	; 136
	.db #0x87	; 135
	.db #0x86	; 134
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc1	; 193
	.db #0x3e	; 62
	.db #0xc2	; 194
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0xdc	; 220
	.db #0x14	; 20
	.db #0xe8	; 232
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
_master_azul_map:
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
_carta_map:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
_tiger_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_tiger2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_dragon_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_dragon2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_crab_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_crab2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_elephant_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_elephant2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_monkey_tiles:
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_monkey2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_crane_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_crane2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_boar_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_boar2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_mantis_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_mantis2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_frog_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_frog2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_goose_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_goose2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_horse_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_horse2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_eel_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_eel2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_rabbit_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_rabbit2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_rooster_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_rooster2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_ox_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_ox2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_cobra_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_cobra2_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_sprite_selector_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_sprite_selector_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_sprite_selector_metasprites:
	.dw _sprite_selector_metasprite0
_sprite_selector_carta_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_sprite_selector_carta_metasprite0:
	.db #0xf0	; -16
	.db #0xec	; -20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xe0	; -32
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x18	;  24
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xe0	; -32
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x18	;  24
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xe0	; -32
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_sprite_selector_carta_metasprites:
	.dw _sprite_selector_carta_metasprite0
_sprite_linea_tiles:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_sprite_linea_metasprite0:
	.db #0xfc	; -4
	.db #0xf0	; -16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_sprite_linea_metasprites:
	.dw _sprite_linea_metasprite0
_pal_bkg_white:
	.dw #0x7fff
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
_titulo_pal:
	.dw #0x7fff
	.dw #0x7c00
	.dw #0x001f
	.dw #0x0000
_rojo_pal:
	.dw #0x7fff
	.dw #0x3a3f
	.dw #0x04fe
	.dw #0x0000
_azul_pal:
	.dw #0x7fff
	.dw #0x7c00
	.dw #0x7227
	.dw #0x0000
_verde_pal:
	.dw #0x7fff
	.dw #0x03e0
	.dw #0x001f
	.dw #0x03e0
_naranja_pal:
	.dw #0x7fff
	.dw #0x029e
	.dw #0x0000
	.dw #0x029e
_azul2_pal:
	.dw #0x7fff
	.dw #0x7c00
	.dw #0x0000
	.dw #0x7c00
_rojo2_pal:
	.dw #0x7fff
	.dw #0x001f
	.dw #0x0000
	.dw #0x001f
_sprite_modo_pal:
	.dw #0x7fff
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
_sprite_modo_pal_rojo:
	.dw #0x7fff
	.dw #0x001f
	.dw #0x001f
	.dw #0x001f
_sprite_modo_pal_verde:
	.dw #0x7fff
	.dw #0x03e0
	.dw #0x03e0
	.dw #0x03e0
_sprite_modo_pal_naranja:
	.dw #0x7fff
	.dw #0x029e
	.dw #0x029e
	.dw #0x029e
_sprite_modo_pal_azul:
	.dw #0x7fff
	.dw #0x7c00
	.dw #0x7c00
	.dw #0x7c00
_fondo_pal:
	.dw #0x7fff
	.dw #0x6f7b
	.dw #0x02ff
	.dw #0x0000
_cartas_azul_pal:
	.dw #0x7fff
	.dw #0x6f7b
	.dw #0x7227
	.dw #0x0000
_cartas_rojo_pal:
	.dw #0x7fff
	.dw #0x6f7b
	.dw #0x3a3f
	.dw #0x0000
_fondo_carta_vacio:
	.dw #0x6f7b
	.dw #0x6f7b
	.dw #0x6f7b
	.dw #0x6f7b
_rojo:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_azul:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
_sprite_cursor_pal:
	.dw #0x7fff
	.dw #0x03ff
	.dw #0x7c00
	.dw #0x7c00
_sprite_cursor_carta_pal:
	.dw #0x7fff
	.dw #0x03ff
	.dw #0x03ff
	.dw #0x03ff
;Onitama.c:28: void aplicar_paletas_juego(void) {
;	---------------------------------
; Function aplicar_paletas_juego
; ---------------------------------
_aplicar_paletas_juego::
;Onitama.c:30: set_bkg_palette(0, 1, fondo_pal);
	ld	de, #_fondo_pal
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:31: set_bkg_palette(1,1, rojo_pal);
	ld	de, #_rojo_pal
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:32: set_bkg_palette(2,1, azul_pal); 
	ld	de, #_azul_pal
	push	de
	ld	hl, #0x102
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:33: set_bkg_palette(3,1, cartas_azul_pal);
	ld	de, #_cartas_azul_pal
	push	de
	ld	hl, #0x103
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:34: set_bkg_palette(4,1, cartas_rojo_pal);
	ld	de, #_cartas_rojo_pal
	push	de
	ld	hl, #0x104
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:35: set_bkg_palette(5,1, fondo_carta_vacio);
	ld	de, #_fondo_carta_vacio
	push	de
	ld	hl, #0x105
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:36: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	ret	NZ
;Onitama.c:37: for(int i=0; i<40; i++) atributos_CARTAS_AZUL[i] = 3;
	ld	bc, #0x0000
00116$:
	ld	a, c
	sub	a, #0x28
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00101$
	ld	hl, #_atributos_CARTAS_AZUL
	add	hl, bc
	ld	(hl), #0x03
	inc	bc
	jr	00116$
00101$:
;Onitama.c:38: set_bkg_attributes(5, 14, 10, 4, atributos_CARTAS_AZUL);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_CARTAS_AZUL
	push	de
	ld	hl, #0x40a
	push	hl
	ld	hl, #0xe05
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:39: for(int i=0; i<40; i++) atributos_CARTAS_ROJO[i] = 4;
	ld	bc, #0x0000
00119$:
	ld	a, c
	sub	a, #0x28
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00102$
	ld	hl, #_atributos_CARTAS_ROJO
	add	hl, bc
	ld	(hl), #0x04
	inc	bc
	jr	00119$
00102$:
;Onitama.c:40: set_bkg_attributes(5, 0, 10, 4, atributos_CARTAS_ROJO);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_CARTAS_ROJO
	push	de
	ld	hl, #0x40a
	push	hl
	ld	hl, #0x05
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:41: for(int i=0; i<16; i++) atributos_CARTA_LATERAL_AZUL[i] = 3;
	ld	bc, #0x0000
00122$:
	ld	a, c
	sub	a, #0x10
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00103$
	ld	hl, #_atributos_CARTA_LATERAL_AZUL
	add	hl, bc
	ld	(hl), #0x03
	inc	bc
	jr	00122$
00103$:
;Onitama.c:42: set_bkg_attributes(16, 7, 4, 4, atributos_CARTA_LATERAL_AZUL);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_CARTA_LATERAL_AZUL
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x710
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:43: for(int i=0; i<16; i++) atributos_CARTA_LATERAL_ROJA[i] = 4;
	ld	bc, #0x0000
00125$:
	ld	a, c
	sub	a, #0x10
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00104$
	ld	hl, #_atributos_CARTA_LATERAL_ROJA
	add	hl, bc
	ld	(hl), #0x04
	inc	bc
	jr	00125$
00104$:
;Onitama.c:44: set_bkg_attributes(0, 7, 4, 4, atributos_CARTA_LATERAL_ROJA);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_CARTA_LATERAL_ROJA
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x700
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:45: for(int i=0; i<16; i++) atributos_FONDO_CARTA_VACIO[i] = 5;
	ld	bc, #0x0000
00128$:
	ld	a, c
	sub	a, #0x10
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00105$
	ld	hl, #_atributos_FONDO_CARTA_VACIO
	add	hl, bc
	ld	(hl), #0x05
	inc	bc
	jr	00128$
00105$:
;Onitama.c:46: set_bkg_attributes(0, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_FONDO_CARTA_VACIO
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x700
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:47: for(int i=0; i<24; i++) atributos_BLUE_WINS[i] =2; 
	ld	bc, #0x0000
00131$:
	ld	a, c
	sub	a, #0x18
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00106$
	ld	hl, #_atributos_BLUE_WINS
	add	hl, bc
	ld	(hl), #0x02
	inc	bc
	jr	00131$
00106$:
;Onitama.c:48: for(int i=0; i<24; i++) atributos_RED_WINS[i] = 1;
	ld	bc, #0x0000
00134$:
	ld	a, c
	sub	a, #0x18
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00107$
	ld	hl, #_atributos_RED_WINS
	add	hl, bc
	ld	(hl), #0x01
	inc	bc
	jr	00134$
00107$:
;Onitama.c:50: set_sprite_palette (0,1, sprite_cursor_pal); //selector de piezas
	ld	de, #_sprite_cursor_pal
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:51: set_sprite_palette (1,1, sprite_cursor_carta_pal); //selector de cartas
	ld	de, #_sprite_cursor_carta_pal
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:52: set_sprite_palette (2,1, fondo_pal); //linea que tapa cartas laterales	
	ld	de, #_fondo_pal
	push	de
	ld	hl, #0x102
	push	hl
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:54: }
	ret
;Onitama.c:56: void cargar_elementos(void){
;	---------------------------------
; Function cargar_elementos
; ---------------------------------
_cargar_elementos::
;Onitama.c:57: set_bkg_data(fondo_TILE_ORIGIN, fondo_TILE_COUNT, fondo_tiles); //fondo
	ld	de, #_fondo_tiles
	push	de
	ld	hl, #0xc10
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:60: set_bkg_data(peon_rojo_TILE_ORIGIN, peon_rojo_TILE_COUNT, peon_rojo_tiles); 
	ld	de, #_peon_rojo_tiles
	push	de
	ld	hl, #0x41c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:61: set_bkg_data(master_rojo_TILE_ORIGIN, master_rojo_TILE_COUNT, master_rojo_tiles);
	ld	de, #_master_rojo_tiles
	push	de
	ld	hl, #0x420
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:62: set_bkg_data(peon_azul_TILE_ORIGIN, peon_azul_TILE_COUNT, peon_azul_tiles);
	ld	de, #_peon_azul_tiles
	push	de
	ld	hl, #0x424
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:63: set_bkg_data(master_azul_TILE_ORIGIN, master_azul_TILE_COUNT, master_azul_tiles);
	ld	de, #_master_azul_tiles
	push	de
	ld	hl, #0x428
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:65: set_bkg_data(fondo_vacio_TILE_ORIGIN, fondo_vacio_TILE_COUNT, fondo_vacio_tiles);
	ld	de, #_fondo_vacio_tiles
	push	de
	ld	hl, #0x4e4
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:66: set_bkg_data(fondo_vacio_carta_TILE_ORIGIN, fondo_vacio_carta_TILE_COUNT, fondo_vacio_carta_tiles);
	ld	de, #_fondo_vacio_carta_tiles
	push	de
	ld	hl, #0x1e8
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:69: set_bkg_tiles(0, 0, 20, 18, fondo_map);
	ld	de, #_fondo_map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:73: set_bkg_data(carta1_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[0]->tiles); //azul inferior izquierda
	ld	hl, #_cartas_partida
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x102c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:74: set_bkg_based_tiles(5, 14, 4, 4, carta_map, carta1_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x2c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0xe05
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:76: set_bkg_data(carta2_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[1]->tiles); ; //azul inferior derecha
	ld	hl, #_cartas_partida + 2
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x104c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:77: set_bkg_based_tiles(11, 14, 4, 4, carta_map, carta2_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x4c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0xe0b
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:79: set_bkg_data(carta3_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[2]->tiles_invertidos); // rojo superior izquierda
	ld	hl, #_cartas_partida + 4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x106c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:80: set_bkg_based_tiles(5, 0, 4, 4, carta_map, carta3_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x6c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x05
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:82: set_bkg_data(carta4_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[3]->tiles_invertidos); //rojo superior derecha
	ld	hl, #_cartas_partida + 6
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x108c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:83: set_bkg_based_tiles(11, 0, 4, 4, carta_map, carta4_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x8c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x0b
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:84: set_bkg_data(carta5_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[4]->tiles); //carta lateral derecha refuerzo (azul)
	ld	hl, #_cartas_partida + 8
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x10
	push	af
	inc	sp
	ld	a, #0xac
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:85: set_bkg_based_tiles(16, 7, 4, 4, carta_map, carta5_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0xac
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x710
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:85: set_bkg_based_tiles(16, 7, 4, 4, carta_map, carta5_TILE_ORIGIN);
;Onitama.c:87: }
	ret
;Onitama.c:88: void actualizar_cartas_visual(void){
;	---------------------------------
; Function actualizar_cartas_visual
; ---------------------------------
_actualizar_cartas_visual::
;Onitama.c:90: set_bkg_data(carta1_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[0]->tiles);
	ld	hl, #_cartas_partida
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x102c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:91: set_bkg_based_tiles(5, 14, 4, 4, carta_map, carta1_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x2c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0xe05
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:92: set_bkg_data(carta2_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[1]->tiles);
	ld	hl, #_cartas_partida + 2
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x104c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:93: set_bkg_based_tiles(11, 14, 4, 4, carta_map, carta2_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x4c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0xe0b
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:96: set_bkg_data(carta3_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[2]->tiles_invertidos);
	ld	hl, #_cartas_partida + 4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x106c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:97: set_bkg_based_tiles(5, 0, 4, 4, carta_map, carta3_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x6c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x05
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:98: set_bkg_data(carta4_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[3]->tiles_invertidos);
	ld	hl, #_cartas_partida + 6
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x108c
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:99: set_bkg_based_tiles(11, 0, 4, 4, carta_map, carta4_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x8c
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x0b
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:102: set_bkg_data(carta5_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[4]->tiles);
	ld	bc, #_cartas_partida + 8
;Onitama.c:100: if (jugador_activo == 1) {
	ld	a, (#_jugador_activo)
	dec	a
	jr	NZ, 00108$
;Onitama.c:102: set_bkg_data(carta5_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[4]->tiles);
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	a, #0x10
	push	af
	inc	sp
	ld	a, #0xac
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:103: set_bkg_based_tiles(16, 7, 4, 4, carta_map, carta5_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0xac
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x710
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:104: set_bkg_tiles(0, 7, 4, 4, fondo_vacio_carta_map);
	ld	de, #_fondo_vacio_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x700
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:105: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	ret	NZ
;Onitama.c:106: set_bkg_attributes(16, 7, 4, 4, atributos_CARTA_LATERAL_AZUL);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_CARTA_LATERAL_AZUL
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x710
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:107: set_bkg_attributes(0, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_FONDO_CARTA_VACIO
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x700
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:107: set_bkg_attributes(0, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
	ret
00108$:
;Onitama.c:111: else if (jugador_activo == 0) {
	ld	a, (#_jugador_activo)
	or	a, a
	ret	NZ
;Onitama.c:113: set_bkg_data(carta5b_TILE_ORIGIN, carta_TILE_COUNT, cartas_partida[4]->tiles_invertidos);
	ld	l, c
	ld	h, b
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	ld	hl, #0x10bc
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:114: set_bkg_based_tiles(0, 7, 4, 4, carta_map, carta5b_TILE_ORIGIN);
;/opt/gbdk/include/gb/gb.h:1170: _map_tile_offset = base_tile;
	ld	hl, #__map_tile_offset
	ld	(hl), #0xbc
;/opt/gbdk/include/gb/gb.h:1171: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x700
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1172: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;Onitama.c:115: set_bkg_tiles(16, 7, 4, 4, fondo_vacio_carta_map);
	ld	de, #_fondo_vacio_carta_map
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x710
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:116: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	ret	NZ
;Onitama.c:117: set_bkg_attributes(0, 7, 4, 4, atributos_CARTA_LATERAL_ROJA);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_CARTA_LATERAL_ROJA
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x700
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:118: set_bkg_attributes(16, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_FONDO_CARTA_VACIO
	push	de
	ld	hl, #0x404
	push	hl
	ld	hl, #0x710
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:118: set_bkg_attributes(16, 7, 4, 4, atributos_FONDO_CARTA_VACIO);
;Onitama.c:121: }
	ret
;Onitama.c:122: void posicion_ejercitos_visual(void){
;	---------------------------------
; Function posicion_ejercitos_visual
; ---------------------------------
_posicion_ejercitos_visual::
;Onitama.c:123: for (y = 0; y < current_size; y++) {
	ld	hl, #_y
	ld	(hl), #0x00
00131$:
;Onitama.c:124: for (x = 0; x < current_size; x++) {
	ld	hl, #_x
	ld	(hl), #0x00
00129$:
;Onitama.c:125: posicion_tropa_x = 2*x + 5;
	ld	a, (#_x)
	add	a, a
	add	a, #0x05
	ld	(#_posicion_tropa_x),a
;Onitama.c:126: posicion_tropa_y = 2*y + 4;
	ld	a, (#_y)
	add	a, a
	add	a, #0x04
	ld	(#_posicion_tropa_y),a
;Onitama.c:127: if (casillas_tablero[y][x] == 1){ //peon rojo (empiezan en el 5,4)
	ld	hl, #_y
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
	cp	a, #0x01
	jr	NZ, 00121$
;Onitama.c:128: set_bkg_tiles(posicion_tropa_x, posicion_tropa_y, 2, 2, peon_rojo_map); 
	ld	de, #_peon_rojo_map
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, (#_posicion_tropa_y)
	ld	h, a
	ld	a, (#_posicion_tropa_x)
	ld	l, a
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:129: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	jp	NZ,00130$
;Onitama.c:130: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, rojo);
	ld	bc, #_rojo
	ld	hl, #_posicion_tropa_y
	ld	e, (hl)
	ld	hl, #_posicion_tropa_x
	ld	d, (hl)
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	push	bc
	ld	hl, #0x202
	push	hl
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:130: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, rojo);
	jp	00130$
00121$:
;Onitama.c:133: else if  (casillas_tablero[y][x] == 2){ //master rojo
	cp	a, #0x02
	jr	NZ, 00118$
;Onitama.c:134: set_bkg_tiles(posicion_tropa_x, posicion_tropa_y, 2, 2,  master_rojo_map);
	ld	de, #_master_rojo_map
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, (#_posicion_tropa_y)
	ld	h, a
	ld	a, (#_posicion_tropa_x)
	ld	l, a
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:135: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	jp	NZ,00130$
;Onitama.c:136: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, rojo);	
	ld	hl, #_posicion_tropa_y
	ld	c, (hl)
	ld	hl, #_posicion_tropa_x
	ld	b, (hl)
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_rojo
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:136: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, rojo);	
	jp	00130$
00118$:
;Onitama.c:139: else if (casillas_tablero[y][x] == 3){ //peon azul
	cp	a, #0x03
	jr	NZ, 00115$
;Onitama.c:140: set_bkg_tiles(posicion_tropa_x , posicion_tropa_y, 2, 2, peon_azul_map);
	ld	de, #_peon_azul_map
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, (#_posicion_tropa_y)
	ld	h, a
	ld	a, (#_posicion_tropa_x)
	ld	l, a
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:141: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	jp	NZ,00130$
;Onitama.c:142: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, azul);
	ld	hl, #_posicion_tropa_y
	ld	c, (hl)
	ld	hl, #_posicion_tropa_x
	ld	b, (hl)
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_azul
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:142: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, azul);
	jr	00130$
00115$:
;Onitama.c:145: else if (casillas_tablero[y][x] == 4){ //master azul
	cp	a, #0x04
	jr	NZ, 00112$
;Onitama.c:146: set_bkg_tiles(posicion_tropa_x , posicion_tropa_y, 2, 2, master_azul_map);
	ld	de, #_master_azul_map
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, (#_posicion_tropa_y)
	ld	h, a
	ld	a, (#_posicion_tropa_x)
	ld	l, a
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:147: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00130$
;Onitama.c:148: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, azul);
	ld	hl, #_posicion_tropa_y
	ld	c, (hl)
	ld	hl, #_posicion_tropa_x
	ld	b, (hl)
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_azul
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:148: set_bkg_attributes(posicion_tropa_x, posicion_tropa_y, 2, 2, azul);
	jr	00130$
00112$:
;Onitama.c:151: else if (casillas_tablero[y][x] == 0){
	or	a, a
	jr	NZ, 00130$
;Onitama.c:152: set_bkg_tiles(posicion_tropa_x, posicion_tropa_y, 2, 2, fondo_vacio_map);
	ld	de, #_fondo_vacio_map
	push	de
	ld	hl, #0x202
	push	hl
	ld	a, (#_posicion_tropa_y)
	ld	h, a
	ld	a, (#_posicion_tropa_x)
	ld	l, a
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
00130$:
;Onitama.c:124: for (x = 0; x < current_size; x++) {
	ld	hl, #_x
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00129$
;Onitama.c:123: for (y = 0; y < current_size; y++) {
	ld	hl, #_y
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00131$
;Onitama.c:156: }
	ret
;Onitama.c:158: void cargar_cursores(void){
;	---------------------------------
; Function cargar_cursores
; ---------------------------------
_cargar_cursores::
;Onitama.c:159: set_sprite_data(1, 4, sprite_selector_tiles);  //indice del primer tile, el número de tiles es 4, y asociado a selector
	ld	de, #_sprite_selector_tiles
	push	de
	ld	hl, #0x401
	push	hl
	call	_set_sprite_data
	add	sp, #4
;Onitama.c:160: set_sprite_data(5, 11, sprite_selector_carta_tiles); 
	ld	de, #_sprite_selector_carta_tiles
	push	de
	ld	hl, #0xb05
	push	hl
	call	_set_sprite_data
	add	sp, #4
;Onitama.c:161: set_sprite_data(205, 1, sprite_linea_tiles); 
	ld	de, #_sprite_linea_tiles
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, #0xcd
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;Onitama.c:162: px = 72+16; //72
	ld	hl, #_px
	ld	(hl), #0x58
;Onitama.c:163: py = 96+24; //96
	ld	hl, #_py
	ld	(hl), #0x78
;Onitama.c:165: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, px, py); // origen, origen en tiles, indice de paleta, numero de sprite,  x=72, y=96 selector normal de 16x16
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x7858
	xor	a, a
	call	___move_metasprite
;Onitama.c:166: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 144);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_carta_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_carta_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x05
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x9044
	ld	a, #0x08
	call	___move_metasprite
;Onitama.c:167: move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24, 152, 76); //lado derecho de las cartas (azul)
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_linea_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_linea_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0xcd
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x02
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x4c98
	ld	a, #0x18
;Onitama.c:167: move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24, 152, 76); //lado derecho de las cartas (azul)
;Onitama.c:168: }
	jp	___move_metasprite
;Onitama.c:174: void delay_frames(uint16_t frames) { //funcion muy importante en vez de usar delay para que no haya descompensación de espera entre GB y GBC (doble de potencia)
;	---------------------------------
; Function delay_frames
; ---------------------------------
_delay_frames::
;Onitama.c:175: while (frames--) {
00101$:
	ld	a, e
	ld	c, d
	dec	de
	or	a, c
	ret	Z
;Onitama.c:176: vsync();
	call	_vsync
;Onitama.c:178: }
	jr	00101$
;Onitama.c:180: void init_cgb(void) {
;	---------------------------------
; Function init_cgb
; ---------------------------------
_init_cgb::
;Onitama.c:181: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00102$
;Onitama.c:182: cpu_fast();
	call	_cpu_fast
;Onitama.c:183: set_bkg_palette(0, 1, pal_bkg_white);
	ld	de, #_pal_bkg_white
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_palette
	add	sp, #4
00102$:
;Onitama.c:187: }
	di
;Onitama.c:186: add_SIO(nowait_int_handler);
	ld	de, #_nowait_int_handler
	call	_add_SIO
	ei
;Onitama.c:188: set_interrupts(VBL_IFLAG | SIO_IFLAG);
	ld	a, #0x09
;Onitama.c:189: }
	jp	_set_interrupts
;Onitama.c:191: void intro(void){
;	---------------------------------
; Function intro
; ---------------------------------
_intro::
;Onitama.c:192: contador = 0;
	xor	a, a
	ld	hl, #_contador
	ld	(hl+), a
	ld	(hl), a
;Onitama.c:194: printf("  Based on Onitama\n     board game\n\n");
	ld	de, #___str_4
	call	_puts
;Onitama.c:195: game_state = 1;
	ld	hl, #_game_state
	ld	(hl), #0x01
;Onitama.c:196: for(contador = 0; contador< 250; contador++){
	xor	a, a
	ld	hl, #_contador
	ld	(hl+), a
	ld	(hl), a
00104$:
;Onitama.c:198: if (joypad() & (J_A | J_B)) {
	call	_joypad
	and	a, #0x30
	jr	NZ, 00103$
;Onitama.c:201: vsync(); // Espera un frame (aprox. 1/60 de segundo)
	call	_vsync
;Onitama.c:196: for(contador = 0; contador< 250; contador++){
	ld	hl, #_contador
	inc	(hl)
	jr	NZ, 00124$
	inc	hl
	inc	(hl)
00124$:
	ld	hl, #_contador
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, c
	sub	a, #0xfa
	ld	a, b
	sbc	a, #0x00
	jr	C, 00104$
00103$:
;Onitama.c:203: delay_frames(30);	
	ld	de, #0x001e
	call	_delay_frames
;Onitama.c:204: cls();
;Onitama.c:205: }
	jp	_cls
___str_4:
	.db 0x0a
	.ascii "     A game by"
	.db 0x0a
	.ascii "  Boniato82, 2026"
	.db 0x0a
	.db 0x0a
	.ascii "  Based on Onitama"
	.db 0x0a
	.ascii "     board game"
	.db 0x0a
	.db 0x00
;Onitama.c:207: void pantalla_titulo(void){
;	---------------------------------
; Function pantalla_titulo
; ---------------------------------
_pantalla_titulo::
;Onitama.c:208: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
;Onitama.c:210: set_bkg_palette(0, 1, titulo_pal);  //indice de la paleta = 0 - numero de paletas a usar 1- nombre de la paleta
	ld	de, #_titulo_pal
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:211: set_bkg_palette(1, 1, rojo_pal); 
	ld	de, #_rojo_pal
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:212: set_bkg_palette(2, 1, azul_pal); 
	ld	de, #_azul_pal
	push	de
	ld	hl, #0x102
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:213: set_bkg_palette(3, 1, verde_pal);
	ld	de, #_verde_pal
	push	de
	ld	hl, #0x103
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:214: set_bkg_palette(4, 1, naranja_pal);
	ld	de, #_naranja_pal
	push	de
	ld	hl, #0x104
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:215: set_bkg_palette(5, 1, azul2_pal); 
	ld	de, #_azul2_pal
	push	de
	ld	hl, #0x105
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:216: set_bkg_palette(6, 1, rojo2_pal);
	ld	de, #_rojo2_pal
	push	de
	ld	hl, #0x106
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;Onitama.c:217: set_sprite_palette (0,1, sprite_modo_pal); 
	ld	de, #_sprite_modo_pal
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:218: set_sprite_palette (1,1, sprite_modo_pal_rojo); 
	ld	de, #_sprite_modo_pal_rojo
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:219: set_sprite_palette (2,1, sprite_modo_pal_azul); 
	ld	de, #_sprite_modo_pal_azul
	push	de
	ld	hl, #0x102
	push	hl
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:220: set_sprite_palette (3,1, sprite_modo_pal_verde);
	ld	de, #_sprite_modo_pal_verde
	push	de
	ld	hl, #0x103
	push	hl
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:221: set_sprite_palette (4,1, sprite_modo_pal_naranja);	
	ld	de, #_sprite_modo_pal_naranja
	push	de
	ld	hl, #0x104
	push	hl
	call	_set_sprite_palette
	add	sp, #4
;Onitama.c:222: set_sprite_data(1, 1, sprite_selector_modo_tiles);
	ld	de, #_sprite_selector_modo_tiles
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_sprite_data
	add	sp, #4
;Onitama.c:223: for(int i=0; i<22; i++) atributos_ROJO[i] = 1;
	ld	bc, #0x0000
00112$:
	ld	a, c
	sub	a, #0x16
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00101$
	ld	hl, #_atributos_ROJO
	add	hl, bc
	ld	(hl), #0x01
	inc	bc
	jr	00112$
00101$:
;Onitama.c:224: for(int i=0; i<22; i++) atributos_AZUL[i] = 2; 
	ld	bc, #0x0000
00115$:
	ld	a, c
	sub	a, #0x16
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00102$
	ld	hl, #_atributos_AZUL
	add	hl, bc
	ld	(hl), #0x02
	inc	bc
	jr	00115$
00102$:
;Onitama.c:225: for(int i=0; i<8; i++) atributos_VERDE[i] = 3;
	ld	bc, #0x0000
00118$:
	ld	a, c
	sub	a, #0x08
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00103$
	ld	hl, #_atributos_VERDE
	add	hl, bc
	ld	(hl), #0x03
	inc	bc
	jr	00118$
00103$:
;Onitama.c:226: for(int i=0; i<8; i++) atributos_NARANJA[i] = 4;
	ld	bc, #0x0000
00121$:
	ld	a, c
	sub	a, #0x08
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00104$
	ld	hl, #_atributos_NARANJA
	add	hl, bc
	ld	(hl), #0x04
	inc	bc
	jr	00121$
00104$:
;Onitama.c:227: for(int i=0; i<8; i++) atributos_AZUL2[i] = 5; 
	ld	bc, #0x0000
00124$:
	ld	a, c
	sub	a, #0x08
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00105$
	ld	hl, #_atributos_AZUL2
	add	hl, bc
	ld	(hl), #0x05
	inc	bc
	jr	00124$
00105$:
;Onitama.c:228: for(int i=0; i<8; i++) atributos_ROJO2[i] = 6; 
	ld	bc, #0x0000
00127$:
	ld	a, c
	sub	a, #0x08
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00106$
	ld	hl, #_atributos_ROJO2
	add	hl, bc
	ld	(hl), #0x06
	inc	bc
	jr	00127$
00106$:
;Onitama.c:229: if (_cpu == CGB_TYPE) {	
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00108$
;Onitama.c:230: set_bkg_attributes(4, 7, 11, 2, atributos_ROJO); //posicion x, posicion y, tiles de 8x8 en ancho = 48 pixels, tiles de 8x8 en alto
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_ROJO
	push	de
	ld	hl, #0x20b
	push	hl
	ld	hl, #0x704
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:231: set_bkg_attributes(4, 15, 11, 2, atributos_AZUL);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_AZUL
	push	de
	ld	hl, #0x20b
	push	hl
	ld	hl, #0xf04
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:231: set_bkg_attributes(4, 15, 11, 2, atributos_AZUL);
00108$:
;Onitama.c:234: set_bkg_data( titulo_TILE_ORIGIN, titulo_TILE_COUNT, titulo_tiles); 
	ld	de, #_titulo_tiles
	push	de
	ld	hl, #0x6064
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:235: set_bkg_data(seleccion_modo_TILE_ORIGIN, seleccion_modo_TILE_COUNT, seleccion_modo_tiles);
	ld	de, #_seleccion_modo_tiles
	push	de
	ld	hl, #0x36c4
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:238: set_bkg_tiles(0, 0, 20, 18, titulo_map); 
	ld	de, #_titulo_map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:239: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;Onitama.c:240: delay_frames(100);
	ld	de, #0x0064
	call	_delay_frames
;Onitama.c:241: sfx_sable();
	call	_sfx_sable
;Onitama.c:242: vsync();
	call	_vsync
;Onitama.c:243: seleccionar_modo();
	call	_seleccionar_modo
;Onitama.c:244: vsync();
	call	_vsync
;Onitama.c:245: cls();
	call	_cls
;Onitama.c:246: VBK_REG = 1; // Cambiar al banco de VRAM 1 (Atributos)
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;Onitama.c:247: fill_bkg_rect(0, 0, 20, 18, 0); // Llenar con 0 (Paleta 0, sin flip, etc.)
	xor	a, a
	ld	h, a
	ld	l, #0x12
	push	hl
	ld	a, #0x14
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_fill_bkg_rect
	add	sp, #5
;Onitama.c:248: VBK_REG = 0; // Volver al banco 0 para operaciones normales
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:249: }
	ret
;Onitama.c:251: void seleccionar_modo(void){
;	---------------------------------
; Function seleccionar_modo
; ---------------------------------
_seleccionar_modo::
;Onitama.c:252: set_bkg_data(seleccion_modo_TILE_ORIGIN, seleccion_modo_TILE_COUNT, seleccion_modo_tiles);
	ld	de, #_seleccion_modo_tiles
	push	de
	ld	hl, #0x36c4
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:253: set_bkg_tiles(5, 9, 10, 6, seleccion_modo_map);
	ld	de, #_seleccion_modo_map
	push	de
	ld	hl, #0x60a
	push	hl
	ld	hl, #0x905
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:254: if (_cpu == CGB_TYPE) {	
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00102$
;Onitama.c:255: set_bkg_attributes(6, 9, 8, 1, atributos_VERDE);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_VERDE
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0x906
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:256: set_bkg_attributes(6, 10, 8, 1, atributos_NARANJA);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_NARANJA
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0xa06
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:257: set_bkg_attributes(6, 11, 8, 1, atributos_ROJO2);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_ROJO2
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0xb06
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:258: set_bkg_attributes(6, 13, 8, 1, atributos_AZUL2);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_AZUL2
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0xd06
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:258: set_bkg_attributes(6, 13, 8, 1, atributos_AZUL2);
00102$:
;Onitama.c:260: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;Onitama.c:261: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 103);// origen, origen en tiles, indice de paleta, numero de sprite,  x=57 y=102
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x673c
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x04
;Onitama.c:263: modo_juego = 1; //por defecto (vs master).
	ld	hl, #_modo_juego
	ld	(hl), #0x01
;Onitama.c:264: while (!(joypad() & J_A)) //mientras que no se pulse A
00115$:
	call	_joypad
	bit	4, a
	jp	NZ,00117$
;Onitama.c:266: if (joypad() & J_DOWN){
	call	_joypad
	bit	3, a
	jp	Z,00108$
;Onitama.c:267: switch (modo_juego){
	ld	a, (#_modo_juego)
	or	a, a
	jr	Z, 00103$
	ld	a, (#_modo_juego)
	dec	a
	jr	Z, 00104$
	ld	a, (#_modo_juego)
	sub	a, #0x02
	jr	Z, 00105$
	jr	00106$
;Onitama.c:268: case 0:
00103$:
;Onitama.c:269: modo_juego=1; //cambia a vs Master
	ld	hl, #_modo_juego
	ld	(hl), #0x01
;Onitama.c:270: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0,  60, 103);  
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x673c
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x04
;Onitama.c:272: break;
	jr	00106$
;Onitama.c:273: case 1:
00104$:
;Onitama.c:274: modo_juego=2; //cambia a vs Legend
	ld	hl, #_modo_juego
	ld	(hl), #0x02
;Onitama.c:275: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 111);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x6f3c
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x01
;Onitama.c:277: break;
	jr	00106$
;Onitama.c:278: case 2:
00105$:
;Onitama.c:279: modo_juego=3; //cambia a 2 players
	ld	hl, #_modo_juego
	ld	(hl), #0x03
;Onitama.c:280: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 62, 124);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x7c3e
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x02
;Onitama.c:283: }
00106$:
;Onitama.c:284: delay_frames(16);	//	60 frames = 1 segundo. 16 frames ≈ 266 ms)
	ld	de, #0x0010
	call	_delay_frames
00108$:
;Onitama.c:286: if (joypad() & J_UP){
	call	_joypad
	bit	2, a
	jp	Z,00114$
;Onitama.c:287: switch (modo_juego){
	ld	a, (#_modo_juego)
	dec	a
	jr	Z, 00109$
	ld	a, (#_modo_juego)
	sub	a, #0x02
	jr	Z, 00110$
	ld	a, (#_modo_juego)
	sub	a, #0x03
	jr	Z, 00111$
	jr	00112$
;Onitama.c:288: case 1:
00109$:
;Onitama.c:289: modo_juego=0; //cambia a vs Student
	ld	hl, #_modo_juego
	ld	(hl), #0x00
;Onitama.c:290: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 57, 95);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x5f39
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x03
;Onitama.c:292: break;
	jr	00112$
;Onitama.c:293: case 2:
00110$:
;Onitama.c:294: modo_juego=1; //cambia a vs Master
	ld	hl, #_modo_juego
	ld	(hl), #0x01
;Onitama.c:295: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 103);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x673c
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x04
;Onitama.c:297: break;	
	jr	00112$
;Onitama.c:298: case 3:
00111$:
;Onitama.c:299: modo_juego=2; //cambia a vs Legend
	ld	hl, #_modo_juego
	ld	(hl), #0x02
;Onitama.c:300: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 111);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x6f3c
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x01
;Onitama.c:303: }
00112$:
;Onitama.c:304: delay_frames(16);		
	ld	de, #0x0010
	call	_delay_frames
00114$:
;Onitama.c:306: vsync();
	call	_vsync
	jp	00115$
00117$:
;Onitama.c:308: waitpadup();
	call	_waitpadup
;Onitama.c:309: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 0, 0);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	(hl), e
	xor	a, a
	call	___move_metasprite
;Onitama.c:310: if (modo_juego==3){
	ld	a, (#_modo_juego)
	sub	a, #0x03
	jp	Z,_menu_2players
;Onitama.c:311: menu_2players();	
;Onitama.c:313: }
	ret
;Onitama.c:314: void inicio_partida(void) {
;	---------------------------------
; Function inicio_partida
; ---------------------------------
_inicio_partida::
;Onitama.c:315: uint16_t rng_seed = LY_REG;
	ldh	a, (_LY_REG + 0)
	ld	c, a
;Onitama.c:316: rng_seed |= (uint16_t)DIV_REG << 8;
	ldh	a, (_DIV_REG + 0)
	ld	b, a
;Onitama.c:317: initrand(rng_seed);
	push	bc
	call	_initrand
	pop	hl
;Onitama.c:318: mezclar_indices(indices, 16);
	ld	a, #0x10
	ld	de, #_indices
	call	_mezclar_indices
;Onitama.c:319: if ((modo_juego != 4) || (modo_juego == 4 && player_is_host != 0)){ //si se juega a cualquier juego que no sea link o si en link comienza él la partida
	ld	a, (#_modo_juego)
	sub	a, #0x04
	ld	a, #0x01
	jr	Z, 00141$
	xor	a, a
00141$:
	ld	c, a
	bit	0, c
	jr	Z, 00101$
	ld	a, c
	or	a, a
	jr	Z, 00102$
	ld	a, (#_player_is_host)
	or	a, a
	jr	Z, 00102$
00101$:
;Onitama.c:320: cartas_partida[0] = mazo[indices[0]];
	ld	hl, #_indices
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_mazo
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #_cartas_partida
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:321: cartas_partida[1] = mazo[indices[1]];
	ld	hl, #_indices + 1
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_mazo
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #(_cartas_partida + 2)
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:322: cartas_partida[2] = mazo[indices[2]];
	ld	hl, #_indices + 2
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_mazo
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #(_cartas_partida + 4)
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:323: cartas_partida[3] = mazo[indices[3]];
	ld	hl, #_indices + 3
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_mazo
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #(_cartas_partida + 6)
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:324: cartas_partida[4] = mazo[indices[4]];
	ld	hl, #_indices + 4
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_mazo
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #(_cartas_partida + 8)
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00102$:
;Onitama.c:326: turno_de_juego = 1;
	ld	hl, #_turno_de_juego
	ld	(hl), #0x01
;Onitama.c:328: if (modo_juego == 4) {
	ld	a, (#_modo_juego)
	sub	a, #0x04
	jr	NZ, 00109$
;Onitama.c:329: link_sync_inicial();
	call	_link_sync_inicial
;Onitama.c:330: jugador_activo = 0; //el jugador activo es el azul (0)
	ld	hl, #_jugador_activo
	ld	(hl), #0x00
;Onitama.c:331: if (player_is_host){ es_mi_turno = 1;}
	ld	a, (#_player_is_host)
	or	a, a
	jr	Z, 00106$
	ld	hl, #_es_mi_turno
	ld	(hl), #0x01
	jr	00109$
00106$:
;Onitama.c:332: else { es_mi_turno = 0;}   
	ld	hl, #_es_mi_turno
	ld	(hl), #0x00
00109$:
;Onitama.c:334: cargar_graficos_juego();
	call	_cargar_graficos_juego
;Onitama.c:335: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;Onitama.c:336: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;Onitama.c:337: }
	ret
;Onitama.c:339: void mezclar_indices(uint8_t* array, uint8_t size) {
;	---------------------------------
; Function mezclar_indices
; ---------------------------------
_mezclar_indices::
	push	de
;Onitama.c:340: for (i = size - 1; i > 0; i--) {
	dec	a
	ld	(#_i),a
00103$:
	ld	a, (#_i)
	or	a, a
	jr	Z, 00105$
;Onitama.c:341: j = rand() % (i + 1);
	call	_rand
	ld	hl, #_i
	ld	c, (hl)
	xor	a, a
	ld	b, a
	inc	bc
	ld	d, #0x00
	call	__modsint
	ld	hl, #_j
	ld	(hl), c
;Onitama.c:343: temp = array[i];
	pop	de
	push	de
	ld	hl, #_i
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	(#_temp),a
;Onitama.c:344: array[i] = array[j];
	pop	de
	push	de
	ld	hl, #_j
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	(bc), a
;Onitama.c:345: array[j] = temp;
	pop	de
	push	de
	ld	hl, #_j
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#_temp)
	ld	(bc), a
;Onitama.c:340: for (i = size - 1; i > 0; i--) {
	ld	hl, #_i
	dec	(hl)
	jr	00103$
00105$:
;Onitama.c:347: }
	inc	sp
	inc	sp
	ret
;Onitama.c:352: void juego(void) {
;	---------------------------------
; Function juego
; ---------------------------------
_juego::
;Onitama.c:353: while (hay_ganador == 0 && game_state != 4) {
00115$:
	ld	a, (#_hay_ganador)
	or	a, a
	jr	NZ, 00117$
	ld	a, (#_game_state)
	sub	a, #0x04
	jr	Z, 00117$
;Onitama.c:354: if (modo_juego == 4) {
	ld	a, (#_modo_juego)
	sub	a, #0x04
	jr	NZ, 00112$
;Onitama.c:357: es_mi_turno = (player_is_host == 1  && jugador_activo == 0) ||  //turno si es jugador azul+turno azul o rojo+turno rojo
	ld	a, (#_player_is_host)
	dec	a
	jr	NZ, 00139$
	ld	a, (#_jugador_activo)
	or	a, a
	jr	Z, 00135$
00139$:
;Onitama.c:358: (player_is_host == 0 && jugador_activo == 1);
	ld	a, (#_player_is_host)
	or	a, a
	jr	NZ, 00134$
	ld	a, (#_jugador_activo)
	dec	a
	jr	Z, 00135$
00134$:
	xor	a, a
	jr	00136$
00135$:
	ld	a, #0x01
00136$:
	ld	hl, #_es_mi_turno
	ld	(hl), a
;Onitama.c:359: if (es_mi_turno) {
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
;Onitama.c:360: handle_input();
	call	_handle_input
	jr	00113$
00102$:
;Onitama.c:362: link_recibir_movimiento();
	call	_link_recibir_movimiento
	jr	00113$
00112$:
;Onitama.c:364: }else if (es_turno_cpu()) {
	call	_es_turno_cpu
	or	a, a
	jr	Z, 00109$
;Onitama.c:365: if (!cpu_ha_jugado) {
	ld	a, (#_cpu_ha_jugado)
	or	a, a
	jr	NZ, 00113$
;Onitama.c:366: ejecutar_turno_cpu();
	call	_ejecutar_turno_cpu
;Onitama.c:367: cpu_ha_jugado = 1;
	ld	hl, #_cpu_ha_jugado
	ld	(hl), #0x01
;Onitama.c:368: if (turno_de_juego < 255) turno_de_juego++;
	ld	hl, #_turno_de_juego
	ld	a, (hl)
	sub	a, #0xff
	jr	NC, 00113$
	inc	(hl)
	jr	00113$
00109$:
;Onitama.c:371: cpu_ha_jugado = 0;
	ld	hl, #_cpu_ha_jugado
	ld	(hl), #0x00
;Onitama.c:372: handle_input();
	call	_handle_input
00113$:
;Onitama.c:374: actualizar_cursores();
	call	_actualizar_cursores
;Onitama.c:375: vsync();
	call	_vsync
	jr	00115$
00117$:
;Onitama.c:377: vsync();
	call	_vsync
;Onitama.c:378: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, 0, 0);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	(hl), e
	xor	a, a
	call	___move_metasprite
;Onitama.c:379: if (hay_ganador == 1) {
	ld	a, (#_hay_ganador)
	dec	a
	jr	NZ, 00125$
;Onitama.c:380: sfx_victoria();
	call	_sfx_victoria
;Onitama.c:381: set_bkg_data(wins_TILE_ORIGIN, wins_TILE_COUNT, blue_wins_tiles);
	ld	de, #_blue_wins_tiles
	push	de
	ld	hl, #0x16ce
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:382: set_bkg_tiles(7, 7, 6, 4, wins_map);
	ld	de, #_wins_map
	push	de
	ld	hl, #0x406
	push	hl
	ld	hl, #0x707
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:383: if (_cpu == CGB_TYPE) set_bkg_attributes(7, 7, 6, 4, atributos_BLUE_WINS);
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00126$
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_BLUE_WINS
	push	de
	ld	hl, #0x406
	push	hl
	ld	hl, #0x707
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:383: if (_cpu == CGB_TYPE) set_bkg_attributes(7, 7, 6, 4, atributos_BLUE_WINS);
	jr	00126$
00125$:
;Onitama.c:385: else if (hay_ganador == 2) {
	ld	a, (#_hay_ganador)
	sub	a, #0x02
	jr	NZ, 00126$
;Onitama.c:386: sfx_derrota();
	call	_sfx_derrota
;Onitama.c:387: set_bkg_data(wins_TILE_ORIGIN, wins_TILE_COUNT, red_wins_tiles);
	ld	bc, #_red_wins_tiles+0
	push	bc
	ld	hl, #0x16ce
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:388: set_bkg_tiles(7, 7, 6, 4, wins_map);
	ld	bc, #_wins_map+0
	push	bc
	ld	hl, #0x406
	push	hl
	ld	hl, #0x707
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:389: if (_cpu == CGB_TYPE) set_bkg_attributes(7, 7, 6, 4, atributos_RED_WINS);
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00126$
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_RED_WINS
	push	de
	ld	hl, #0x406
	push	hl
	ld	hl, #0x707
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:389: if (_cpu == CGB_TYPE) set_bkg_attributes(7, 7, 6, 4, atributos_RED_WINS);
00126$:
;Onitama.c:391: if (hay_ganador != 0) delay_frames(200);
	ld	a, (#_hay_ganador)
	or	a, a
	jr	Z, 00128$
	ld	de, #0x00c8
	call	_delay_frames
00128$:
;Onitama.c:392: game_state = 4;
	ld	hl, #_game_state
	ld	(hl), #0x04
;Onitama.c:393: }
	ret
;Onitama.c:396: void handle_input(void) { //manejo del cursor.
;	---------------------------------
; Function handle_input
; ---------------------------------
_handle_input::
;Onitama.c:397: input = joypad();
	call	_joypad
	ld	(#_input),a
;Onitama.c:398: vsync();
	call	_vsync
;Onitama.c:399: if (input & J_LEFT  && px > 40+16) {px-=16;  delay_frames(10);}
	ld	a, (#_input)
	bit	1, a
	jr	Z, 00102$
	ld	a, #0x38
	ld	hl, #_px
	sub	a, (hl)
	jr	NC, 00102$
	ld	a, (hl)
	add	a, #0xf0
	ld	(hl), a
	ld	de, #0x000a
	call	_delay_frames
00102$:
;Onitama.c:400: if (input & J_RIGHT && px < 104+16){ px+=16; delay_frames(10);} //sumamos +16 porque si no no está bien cuadrado.
	ld	a, (#_input)
	rrca
	jr	NC, 00105$
	ld	hl, #_px
	ld	a,(hl)
	cp	a,#0x78
	jr	NC, 00105$
	add	a, #0x10
	ld	(hl), a
	ld	de, #0x000a
	call	_delay_frames
00105$:
;Onitama.c:401: if (input & J_UP    && py > 40+16) {py-=16; delay_frames(10);}
	ld	a, (#_input)
	bit	2, a
	jr	Z, 00108$
	ld	a, #0x38
	ld	hl, #_py
	sub	a, (hl)
	jr	NC, 00108$
	ld	a, (hl)
	add	a, #0xf0
	ld	(hl), a
	ld	de, #0x000a
	call	_delay_frames
00108$:
;Onitama.c:402: if (input & J_DOWN  && py < 96+16) {py+=16; delay_frames(10);}
	ld	a, (#_input)
	bit	3, a
	jr	Z, 00111$
	ld	hl, #_py
	ld	a,(hl)
	cp	a,#0x70
	jr	NC, 00111$
	add	a, #0x10
	ld	(hl), a
	ld	de, #0x000a
	call	_delay_frames
00111$:
;Onitama.c:399: if (input & J_LEFT  && px > 40+16) {px-=16;  delay_frames(10);}
	ld	a, (#_input)
;Onitama.c:403: if((input & J_SELECT) && (input &  J_A) && (input &  J_B)) {  
	bit	6, a
	jr	Z, 00114$
	bit	4, a
	jr	Z, 00114$
	bit	5, a
	jr	Z, 00114$
;Onitama.c:404: waitpadup();
	call	_waitpadup
;Onitama.c:405: game_state = 4;  //reseteo del juego 
	ld	hl, #_game_state
	ld	(hl), #0x04
00114$:
;Onitama.c:407: if (input  & J_A) { 
	ld	a, (#_input)
	bit	4, a
	jr	Z, 00118$
;Onitama.c:408: waitpadup();
	call	_waitpadup
;Onitama.c:409: procesar_seleccion();
	call	_procesar_seleccion
00118$:
;Onitama.c:411: if (input & J_B) {
	ld	a, (#_input)
	bit	5, a
	ret	Z
;Onitama.c:412: if (selecciona_derecha == 0) {
	ld	hl, #_selecciona_derecha
	ld	a, (hl)
	or	a, a
	jr	NZ, 00120$
;Onitama.c:413: selecciona_derecha = 1;
	ld	(hl), #0x01
;Onitama.c:414: delay_frames(10);
	ld	de, #0x000a
	jp	_delay_frames
00120$:
;Onitama.c:417: selecciona_derecha = 0; 
	ld	hl, #_selecciona_derecha
;Onitama.c:418: delay_frames(10);
	ld	de, #0x000a
	ld	(hl), d
;Onitama.c:423: }
	jp	_delay_frames
;Onitama.c:426: uint8_t movimiento_valido(
;	---------------------------------
; Function movimiento_valido
; ---------------------------------
_movimiento_valido::
	add	sp, #-5
	ld	c, a
;Onitama.c:434: int8_t dx = destino_x - origen_x;
	ldhl	sp,	#7
	ld	a, (hl)
	sub	a, c
	ldhl	sp,	#3
	ld	(hl), a
;Onitama.c:435: int8_t dy = destino_y - origen_y;
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, e
	ldhl	sp,	#4
	ld	(hl), a
;Onitama.c:437: if (jugador_activo == 1) {
	ldhl	sp,	#11
	ld	a, (hl)
;Onitama.c:438: dx = -dx;
	dec	a
	jr	NZ, 00102$
	ldhl	sp,	#3
	sub	a, (hl)
;Onitama.c:439: dy = -dy;
	ld	(hl+), a
	xor	a, a
	sub	a, (hl)
	ld	(hl), a
00102$:
;Onitama.c:442: const Movimiento* movs = carta->movimientos;
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:443: uint8_t cantidad = carta->cantidad;
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	c, a
;Onitama.c:445: for (i = 0; i < cantidad; i++) {
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, c
	jr	NC, 00106$
;Onitama.c:446: if (dx == movs[i].dx && dy == movs[i].dy) {
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	e, l
	ld	d, h
	pop	hl
	push	hl
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	a, (hl-)
	sub	a, (hl)
	jr	NZ, 00109$
	inc	de
	ld	a, (de)
	ld	e, a
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, e
	jr	NZ, 00109$
;Onitama.c:447: return 1;
	ld	a, #0x01
	jr	00110$
00109$:
;Onitama.c:445: for (i = 0; i < cantidad; i++) {
	inc	b
	jr	00108$
00106$:
;Onitama.c:450: return 0;
	xor	a, a
00110$:
;Onitama.c:451: }
	add	sp, #5
	pop	hl
	add	sp, #5
	jp	(hl)
;Onitama.c:454: void actualizar_cursores(void) {
;	---------------------------------
; Function actualizar_cursores
; ---------------------------------
_actualizar_cursores::
;Onitama.c:456: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, px, py);
	ld	hl, #_py
	ld	c, (hl)
	ld	hl, #_px
	ld	e, (hl)
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, c
	xor	a, a
	call	___move_metasprite
;Onitama.c:458: if (selector_fijo_activo) { 
	ld	a, (#_selector_fijo_activo)
	or	a, a
	jr	Z, 00102$
;Onitama.c:459: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, selector_fijo_x, selector_fijo_y);
	ld	hl, #_selector_fijo_y
	ld	c, (hl)
	ld	hl, #_selector_fijo_x
	ld	e, (hl)
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, c
	ld	a, #0x04
	call	___move_metasprite
;Onitama.c:459: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, selector_fijo_x, selector_fijo_y);
	jr	00103$
00102$:
;Onitama.c:462: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, 0, 0); // fuera de pantalla
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	(hl), e
	ld	a, #0x04
	call	___move_metasprite
;Onitama.c:462: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, 0, 0); // fuera de pantalla
00103$:
;Onitama.c:466: if (jugador_activo == 0) { //selector de carta
	ld	a, (#_jugador_activo)
	or	a, a
	jr	NZ, 00111$
;Onitama.c:468: if (selecciona_derecha == 0)
	ld	a, (#_selecciona_derecha)
	or	a, a
	jr	NZ, 00105$
;Onitama.c:469: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 144);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_carta_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_carta_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x05
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x9044
	ld	a, #0x08
	call	___move_metasprite
;Onitama.c:469: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 144);
	jr	00112$
00105$:
;Onitama.c:471: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 116, 144);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_carta_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_carta_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x05
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x9074
	ld	a, #0x08
	call	___move_metasprite
;Onitama.c:471: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 116, 144);
	jr	00112$
00111$:
;Onitama.c:474: if (selecciona_derecha == 0)
	ld	a, (#_selecciona_derecha)
	or	a, a
	jr	NZ, 00108$
;Onitama.c:475: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 33);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_carta_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_carta_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x05
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x2144
	ld	a, #0x08
	call	___move_metasprite
;Onitama.c:475: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 68, 33);
	jr	00112$
00108$:
;Onitama.c:477: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 116, 33);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_carta_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_carta_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x05
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x2174
	ld	a, #0x08
	call	___move_metasprite
;Onitama.c:477: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8, 116, 33);
00112$:
;Onitama.c:480: move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24, 152, 76); //lado derecho de las cartas (azul)
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_linea_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_linea_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0xcd
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x02
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x4c98
	ld	a, #0x18
;Onitama.c:480: move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24, 152, 76); //lado derecho de las cartas (azul)
;Onitama.c:481: }
	jp	___move_metasprite
;Onitama.c:484: void procesar_seleccion(void) {
;	---------------------------------
; Function procesar_seleccion
; ---------------------------------
_procesar_seleccion::
	add	sp, #-4
;Onitama.c:485: x = (px - 40 - 8) / 16;
	ld	a, (#_px)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0030
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00140$
	pop	de
	push	de
	ld	hl, #0xffdf
	add	hl, de
	ld	c, l
	ld	b, h
00140$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_x
	ld	(hl), c
;Onitama.c:486: y = (py - 32 - 9) / 16;
	ld	a, (#_py)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0029
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00141$
	pop	de
	push	de
	ld	hl, #0xffe6
	add	hl, de
	ld	c, l
	ld	b, h
00141$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_y
	ld	(hl), c
;Onitama.c:489: if (x > 4 || y > 4) return;
	ld	a, #0x04
	ld	hl, #_x
	sub	a, (hl)
	jp	C,00138$
	ld	a, #0x04
	ld	hl, #_y
	sub	a, (hl)
	jp	C,00138$
;Onitama.c:492: pieza = casillas_tablero[y][x];
	ld	hl, #_x
	ld	b, (hl)
;Onitama.c:495: origen_y = y;
	ld	hl, #_y
	ld	c, (hl)
;Onitama.c:490: if (pieza_seleccionada == 0) {
	ld	a, (#_pieza_seleccionada)
	or	a, a
	jr	NZ, 00136$
;Onitama.c:492: pieza = casillas_tablero[y][x];
	ld	hl, #_y
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	de, #_casillas_tablero
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	a, (hl)
	ld	(#_pieza),a
;Onitama.c:493: if ((jugador_activo == 0 && (pieza == 3 || pieza == 4)) || (jugador_activo == 1 && (pieza  == 1 || pieza == 2))) {
	ld	a, (#_jugador_activo)
	or	a, a
	jr	NZ, 00110$
	ld	a,(#_pieza)
	cp	a,#0x03
	jr	Z, 00104$
	sub	a, #0x04
	jr	Z, 00104$
00110$:
	ld	a, (#_jugador_activo)
	dec	a
	jp	NZ,00138$
	ld	a, (#_pieza)
	dec	a
	jr	Z, 00104$
	ld	a, (#_pieza)
	sub	a, #0x02
	jp	NZ,00138$
00104$:
;Onitama.c:494: origen_x = x;
	ld	hl, #_origen_x
	ld	(hl), b
;Onitama.c:495: origen_y = y;
	ld	hl, #_origen_y
	ld	(hl), c
;Onitama.c:496: pieza_seleccionada = 1; 
	ld	hl, #_pieza_seleccionada
	ld	(hl), #0x01
;Onitama.c:497: selector_fijo_activo = 1;
	ld	hl, #_selector_fijo_activo
	ld	(hl), #0x01
;Onitama.c:498: selector_fijo_x = px;
	ld	a, (#_px)
	ld	(#_selector_fijo_x),a
;Onitama.c:499: selector_fijo_y = py;
	ld	a, (#_py)
	ld	(#_selector_fijo_y),a
;Onitama.c:500: delay_frames(10);
	ld	de, #0x000a
	call	_delay_frames
	jp	00138$
00136$:
;Onitama.c:503: } else if (pieza_seleccionada == 1) { // FASE 2
	ld	a, (#_pieza_seleccionada)
	dec	a
	jp	NZ,00138$
;Onitama.c:504: destino_x = x;
	ld	hl, #_destino_x
	ld	(hl), b
;Onitama.c:505: destino_y = y;
	ld	hl, #_destino_y
;Onitama.c:506: uint8_t pieza_destino = casillas_tablero[destino_y][destino_x];
	ld	(hl),c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_destino_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, (hl)
;Onitama.c:507: if (jugador_activo == 0) {	 // azul					
	ld	a, (#_jugador_activo)
	or	a, a
	jr	NZ, 00124$
;Onitama.c:508: if (pieza_destino == 3 || pieza_destino == 4) {
	ld	a, c
	sub	a, #0x03
	jr	Z, 00111$
	ld	a, c
	sub	a, #0x04
	jr	NZ, 00112$
00111$:
;Onitama.c:509: pieza_seleccionada = 0;
	ld	hl, #_pieza_seleccionada
	ld	(hl), #0x00
;Onitama.c:510: selector_fijo_activo = 0;
	ld	hl, #_selector_fijo_activo
	ld	(hl), #0x00
;Onitama.c:511: return;    
	jp	00138$
00112$:
;Onitama.c:514: if (selecciona_derecha == 0){
	ld	a, (#_selecciona_derecha)
	or	a, a
	jr	NZ, 00115$
;Onitama.c:515: carta_actual = cartas_partida[0];
	ld	de, #_cartas_partida
	ld	a, (de)
	ld	hl, #_carta_actual
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:516: indice_carta_usada = 0;}
	ld	hl, #_indice_carta_usada
	ld	(hl), #0x00
	jr	00125$
00115$:
;Onitama.c:518: carta_actual = cartas_partida[1];
	ld	de, #(_cartas_partida + 2)
	ld	a, (de)
	ld	hl, #_carta_actual
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:519: indice_carta_usada = 1;}
	ld	hl, #_indice_carta_usada
	ld	(hl), #0x01
	jr	00125$
00124$:
;Onitama.c:521: if (pieza_destino == 1 || pieza_destino == 2) {
	ld	a, c
	dec	a
	jr	Z, 00117$
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00118$
00117$:
;Onitama.c:522: pieza_seleccionada = 0;
	ld	hl, #_pieza_seleccionada
	ld	(hl), #0x00
;Onitama.c:523: selector_fijo_activo = 0;
	ld	hl, #_selector_fijo_activo
	ld	(hl), #0x00
;Onitama.c:524: return;
	jp	00138$
00118$:
;Onitama.c:526: if (selecciona_derecha == 0){
	ld	a, (#_selecciona_derecha)
	or	a, a
	jr	NZ, 00121$
;Onitama.c:527: carta_actual = cartas_partida[2];
	ld	de, #(_cartas_partida + 4)
	ld	a, (de)
	ld	hl, #_carta_actual
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:528: indice_carta_usada = 2;}
	ld	hl, #_indice_carta_usada
	ld	(hl), #0x02
	jr	00125$
00121$:
;Onitama.c:530: carta_actual = cartas_partida[3];
	ld	de, #(_cartas_partida + 6)
	ld	a, (de)
	ld	hl, #_carta_actual
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:531: indice_carta_usada = 3;}
	ld	hl, #_indice_carta_usada
	ld	(hl), #0x03
00125$:
;Onitama.c:533: if (movimiento_valido(origen_x, origen_y, destino_x, destino_y, carta_actual, jugador_activo)) {
	ld	a, (#_jugador_activo)
	push	af
	inc	sp
	ld	hl, #_carta_actual
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, (#_destino_y)
	ld	h, a
	ld	a, (#_destino_x)
	ld	l, a
	push	hl
	ld	hl, #_origen_y
	ld	e, (hl)
	ld	a, (#_origen_x)
	call	_movimiento_valido
	or	a, a
	jp	Z, 00132$
;Onitama.c:534: casillas_tablero[destino_y][destino_x] = casillas_tablero[origen_y][origen_x];
	ld	hl, #_destino_y
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_destino_x
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	hl, #_origen_y
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_origen_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, (hl)
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;Onitama.c:535: casillas_tablero[origen_y][origen_x] = 0;
	ld	hl, #_origen_y
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_origen_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	(hl), #0x00
;Onitama.c:536: if (jugador_activo == 0) sfx_mover_pieza();
	ld	a, (#_jugador_activo)
	or	a, a
	jr	NZ, 00127$
	call	_sfx_mover_pieza
	jr	00128$
00127$:
;Onitama.c:537: else sfx_mover_pieza_rojo();
	call	_sfx_mover_pieza_rojo
00128$:
;Onitama.c:538: if (modo_juego == 4) {
	ld	a, (#_modo_juego)
	sub	a, #0x04
	jr	NZ, 00130$
;Onitama.c:539: link_enviar_movimiento(origen_x, origen_y, destino_x, destino_y, indice_carta_usada);
	ld	a, (#_indice_carta_usada)
	ld	h, a
	ld	a, (#_destino_y)
	ld	l, a
	push	hl
	ld	a, (#_destino_x)
	push	af
	inc	sp
	ld	hl, #_origen_y
	ld	e, (hl)
	ld	a, (#_origen_x)
	call	_link_enviar_movimiento
00130$:
;Onitama.c:542: const Carta* temp = cartas_partida[4];
	ld	hl, #(_cartas_partida + 8)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;Onitama.c:543: cartas_partida[4] = cartas_partida[indice_carta_usada];
	ld	hl, #_indice_carta_usada
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_cartas_partida
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	de, #(_cartas_partida + 8)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;Onitama.c:544: cartas_partida[indice_carta_usada] = temp;
	ld	hl, #_indice_carta_usada
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_cartas_partida
	add	hl, de
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:545: waitpadup();
	call	_waitpadup
;Onitama.c:546: actualizar_cartas_visual();
	call	_actualizar_cartas_visual
;Onitama.c:548: jugador_activo = !jugador_activo;
	ld	hl, #_jugador_activo
	ld	a, (hl)
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	(hl), a
;Onitama.c:549: posicion_ejercitos_visual();
	call	_posicion_ejercitos_visual
00132$:
;Onitama.c:551: selector_fijo_activo = 0;
	ld	hl, #_selector_fijo_activo
	ld	(hl), #0x00
;Onitama.c:552: pieza_seleccionada = 0;
	ld	hl, #_pieza_seleccionada
	ld	(hl), #0x00
;Onitama.c:553: comprobar_victoria(); 
	call	_comprobar_victoria
;Onitama.c:554: delay_frames(10);
	ld	de, #0x000a
	call	_delay_frames
00138$:
;Onitama.c:556: }
	add	sp, #4
	ret
;Onitama.c:558: void comprobar_victoria(void) {
;	---------------------------------
; Function comprobar_victoria
; ---------------------------------
_comprobar_victoria::
;Onitama.c:559: hay_master_rojo = 0;
	ld	hl, #_hay_master_rojo
	ld	(hl), #0x00
;Onitama.c:560: hay_master_azul = 0;
	ld	hl, #_hay_master_azul
	ld	(hl), #0x00
;Onitama.c:562: for (y = 0; y < 5; y++) {
	ld	hl, #_y
	ld	(hl), #0x00
00117$:
;Onitama.c:563: for (x = 0; x < 5; x++) {
	ld	hl, #_x
	ld	(hl), #0x00
00115$:
;Onitama.c:564: if (casillas_tablero[y][x] == 2) hay_master_rojo = 1;
	ld	hl, #_y
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00102$
	ld	a, #0x01
	ld	(_hay_master_rojo), a
00102$:
;Onitama.c:565: if (casillas_tablero[y][x] == 4) hay_master_azul = 1;
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00116$
	ld	hl, #_hay_master_azul
	ld	(hl), #0x01
00116$:
;Onitama.c:563: for (x = 0; x < 5; x++) {
	ld	hl, #_x
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00115$
;Onitama.c:562: for (y = 0; y < 5; y++) {
	ld	hl, #_y
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00117$
;Onitama.c:570: if (!hay_master_rojo) {
	ld	a, (#_hay_master_rojo)
	or	a, a
	jr	NZ, 00108$
;Onitama.c:571: hay_ganador = 1; // gana azul
	ld	hl, #_hay_ganador
	ld	(hl), #0x01
;Onitama.c:572: return;
	ret
00108$:
;Onitama.c:575: if (!hay_master_azul) {
	ld	a, (#_hay_master_azul)
	or	a, a
	jr	NZ, 00110$
;Onitama.c:576: hay_ganador = 2; // gana rojo
	ld	hl, #_hay_ganador
	ld	(hl), #0x02
;Onitama.c:577: return;
	ret
00110$:
;Onitama.c:581: if (casillas_tablero[0][2] == 4) {
	ld	a, (#(_casillas_tablero + 2) + 0)
	sub	a, #0x04
	jr	NZ, 00112$
;Onitama.c:582: hay_ganador = 1; // azul gana
	ld	hl, #_hay_ganador
	ld	(hl), #0x01
;Onitama.c:583: return;
	ret
00112$:
;Onitama.c:586: if (casillas_tablero[4][2] == 2) {
	ld	a, (#(_casillas_tablero + 22) + 0)
	sub	a, #0x02
	ret	NZ
;Onitama.c:587: hay_ganador = 2; // rojo gana
	ld	hl, #_hay_ganador
	ld	(hl), #0x02
;Onitama.c:588: return;
;Onitama.c:590: }
	ret
;Onitama.c:592: uint8_t es_turno_cpu(void) {
;	---------------------------------
; Function es_turno_cpu
; ---------------------------------
_es_turno_cpu::
;Onitama.c:593: if (modo_juego == 3) return 0; // 2 jugadores
	ld	a, (#_modo_juego)
	sub	a, #0x03
	jr	NZ, 00102$
	xor	a, a
	ret
00102$:
;Onitama.c:595: if (jugador_activo == 1) return 1; // rojo = CPU
	ld	a, (#_jugador_activo)
	dec	a
;Onitama.c:597: return 0;
	ld	a, #0x01
	ret	Z
	xor	a, a
;Onitama.c:598: }
	ret
;Onitama.c:605: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;Onitama.c:606: init_cgb(); //ponerlo en modo GBC si el hardware lo es. Impedir jugar en modo GB original
	call	_init_cgb
;Onitama.c:607: while (1) {
00108$:
;Onitama.c:608: switch (game_state){
	ld	a, #0x04
	ld	hl, #_game_state
	sub	a, (hl)
	jr	C, 00108$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00126$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00126$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
;Onitama.c:609: case 0: //lo ponemos al final, apartado del resto.
00101$:
;Onitama.c:610: intro();
	call	_intro
;Onitama.c:611: break;
	jr	00108$
;Onitama.c:612: case 1:
00102$:
;Onitama.c:613: pantalla_titulo();
	call	_pantalla_titulo
;Onitama.c:614: game_state = 2;
	ld	hl, #_game_state
	ld	(hl), #0x02
;Onitama.c:615: break;
	jr	00108$
;Onitama.c:616: case 2:
00103$:
;Onitama.c:617: inicio_partida();
	call	_inicio_partida
;Onitama.c:618: game_state = 3;
	ld	hl, #_game_state
	ld	(hl), #0x03
;Onitama.c:619: break;
	jr	00108$
;Onitama.c:620: case 3:
00104$:
;Onitama.c:621: juego();
	call	_juego
;Onitama.c:622: game_state = 4;
	ld	hl, #_game_state
	ld	(hl), #0x04
;Onitama.c:623: break;
	jr	00108$
;Onitama.c:624: case 4:
00105$:
;Onitama.c:625: reseteo_juego();
	call	_reseteo_juego
;Onitama.c:626: game_state = 1; //volvemos a la pantalla de título.
	ld	hl, #_game_state
	ld	(hl), #0x01
;Onitama.c:628: }
;Onitama.c:630: }
	jr	00108$
;Onitama.c:632: void reseteo_juego(void){
;	---------------------------------
; Function reseteo_juego
; ---------------------------------
_reseteo_juego::
	add	sp, #-6
;Onitama.c:633: vsync(); //wait_vbl_done();
	call	_vsync
;Onitama.c:635: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;Onitama.c:636: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 0, 0, 0); // origen, origen en tiles, indice de paleta, numero de sprite,  x=72, y=96 selector normal de 16x16
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	(hl), e
	xor	a, a
	call	___move_metasprite
;Onitama.c:637: move_metasprite_ex(sprite_selector_metasprite0, 1, 0, 4, 0, 0); // fuera de pantalla
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	(hl), e
	ld	a, #0x04
	call	___move_metasprite
;Onitama.c:638: move_metasprite_ex(sprite_selector_carta_metasprite0, 5, 1, 8,  0, 0);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_carta_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_carta_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x05
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	a, #0x08
	call	___move_metasprite
;Onitama.c:639: move_metasprite_ex(sprite_linea_metasprite0, 205, 2, 24,  0, 0); //lado derecho de las cartas (azul)//ocultamos sprites.
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_linea_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_linea_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0xcd
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x02
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	a, #0x18
	call	___move_metasprite
;Onitama.c:640: cls();
	call	_cls
;Onitama.c:641: HIDE_BKG;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfe
	ldh	(_LCDC_REG + 0), a
;Onitama.c:642: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;Onitama.c:643: fill_bkg_rect(0, 0, 20, 18, 0);
	xor	a, a
	ld	h, a
	ld	l, #0x12
	push	hl
	ld	a, #0x14
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_fill_bkg_rect
	add	sp, #5
;Onitama.c:644: VBK_REG = 0; 
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:645: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;Onitama.c:646: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;Onitama.c:647: hay_ganador = 0;
	ld	hl, #_hay_ganador
	ld	(hl), #0x00
;Onitama.c:648: pieza_seleccionada = 0;
	ld	hl, #_pieza_seleccionada
	ld	(hl), #0x00
;Onitama.c:649: selecciona_derecha = 0; 
	ld	hl, #_selecciona_derecha
	ld	(hl), #0x00
;Onitama.c:650: jugador_activo = 0;
	ld	hl, #_jugador_activo
	ld	(hl), #0x00
;Onitama.c:651: player_is_host = 0;
	ld	hl, #_player_is_host
	ld	(hl), #0x00
;Onitama.c:652: cpu_ha_jugado = 0;
	ld	hl, #_cpu_ha_jugado
	ld	(hl), #0x00
;Onitama.c:653: modo_juego = 1;
	ld	hl, #_modo_juego
	ld	(hl), #0x01
;Onitama.c:654: turno_de_juego = 1;		
	ld	hl, #_turno_de_juego
	ld	(hl), #0x01
;Onitama.c:655: for (uint8_t y = 0; y < 5; y++) {
	ldhl	sp,	#4
	ld	(hl), #0x00
00111$:
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x05
	jr	NC, 00102$
;Onitama.c:656: for (uint8_t x = 0; x < 5; x++) {
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_casillas_tablero
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ld	hl, #_casillas_tablero_inicial
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl+), a
	inc	hl
	ld	(hl), #0x00
00108$:
	ldhl	sp,	#5
	ld	a, (hl)
	sub	a, #0x05
	jr	NC, 00112$
;Onitama.c:657: casillas_tablero[y][x] = casillas_tablero_inicial[y][x];
	pop	de
	push	de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	(bc), a
;Onitama.c:656: for (uint8_t x = 0; x < 5; x++) {
	ldhl	sp,	#5
	inc	(hl)
	jr	00108$
00112$:
;Onitama.c:655: for (uint8_t y = 0; y < 5; y++) {
	ldhl	sp,	#4
	inc	(hl)
	jr	00111$
00102$:
;Onitama.c:660: game_state = 1;
	ld	hl, #_game_state
	ld	(hl), #0x01
;Onitama.c:661: }
	add	sp, #6
	ret
;Onitama.c:668: void ejecutar_turno_cpu(void) {
;	---------------------------------
; Function ejecutar_turno_cpu
; ---------------------------------
_ejecutar_turno_cpu::
	add	sp, #-4
;Onitama.c:669: total_movimientos_cpu = 0;
	ld	hl, #_total_movimientos_cpu
	ld	(hl), #0x00
;Onitama.c:670: encontrado = 0;
	ld	hl, #_encontrado
	ld	(hl), #0x00
;Onitama.c:673: for (y = 0; y < 5 && !encontrado; y++) {
	ld	hl, #_y
	ld	(hl), #0x00
00174$:
	ld	a, (#_y)
	sub	a, #0x05
	jp	NC, 00121$
	ld	a, (#_encontrado)
	or	a, a
	jp	NZ, 00121$
;Onitama.c:674: for (x = 0; x < 5 && !encontrado; x++) {
	ld	hl, #_x
	ld	(hl), #0x00
00170$:
	ld	a, (#_x)
	sub	a, #0x05
	jp	NC, 00175$
	ld	a, (#_encontrado)
	or	a, a
	jp	NZ, 00175$
;Onitama.c:677: if (casillas_tablero[y][x] == 1 || casillas_tablero[y][x] == 2) {
	ld	hl, #_y
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	a, (#_x)
	ldhl	sp,	#3
	ld	(hl), a
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
	cp	a, #0x01
	jr	Z, 00117$
	sub	a, #0x02
	jp	NZ,00171$
00117$:
;Onitama.c:679: origen_x = x;
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(#_origen_x),a
;Onitama.c:680: origen_y = y;
	ld	a, (#_y)
	ld	(#_origen_y),a
;Onitama.c:683: for (i = 0; i < 2 && !encontrado; i++) {
	ld	hl, #_i
	ld	(hl), #0x00
00166$:
	ld	a, (#_i)
	sub	a, #0x02
	jp	NC, 00171$
	ld	a, (#_encontrado)
	or	a, a
	jp	NZ, 00171$
;Onitama.c:684: if (i == 0) {
	ld	a, (#_i)
	or	a, a
	jr	NZ, 00102$
;Onitama.c:685: carta_actual = cartas_partida[2];
	ld	de, #(_cartas_partida + 4)
	ld	a, (de)
	ld	hl, #_carta_actual
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:686: indice_carta_usada = 2;
	ld	hl, #_indice_carta_usada
	ld	(hl), #0x02
	jr	00103$
00102$:
;Onitama.c:688: carta_actual = cartas_partida[3];
	ld	de, #(_cartas_partida + 6)
	ld	a, (de)
	ld	hl, #_carta_actual
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:689: indice_carta_usada = 3;
	ld	hl, #_indice_carta_usada
	ld	(hl), #0x03
00103$:
;Onitama.c:692: const Movimiento* movs = carta_actual->movimientos;
	ld	hl, #_carta_actual
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:693: cantidad = carta_actual->cantidad;
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	(#_cantidad),a
;Onitama.c:695: for (m = 0; m < cantidad && !encontrado; m++) {
	ldhl	sp,	#3
	ld	(hl), #0x00
00163$:
	ldhl	sp,	#3
	ld	a, (hl)
	ld	hl, #_cantidad
	sub	a, (hl)
	jp	NC, 00167$
	ld	a, (#_encontrado)
	or	a, a
	jp	NZ, 00167$
;Onitama.c:697: dx = movs[m].dx;
	ldhl	sp,	#3
	ld	a, (hl-)
	ld	c, a
	xor	a, a
	ld	b, a
	sla	c
	rl	b
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	(#_dx),a
;Onitama.c:698: dy = movs[m].dy;
	inc	bc
	ld	a, (bc)
	ld	(#_dy),a
;Onitama.c:701: dx = -dx;
	xor	a, a
	ld	hl, #_dx
	sub	a, (hl)
	ld	(hl), a
;Onitama.c:702: dy = -dy;
	xor	a, a
	ld	hl, #_dy
	sub	a, (hl)
	ld	(hl), a
;Onitama.c:704: destino_x = origen_x + dx;
	ld	a, (#_origen_x)
	ld	hl, #_dx
	add	a, (hl)
	ld	(#_destino_x),a
;Onitama.c:705: destino_y = origen_y + dy;
	ld	a, (#_origen_y)
	ld	hl, #_dy
	add	a, (hl)
	ld	(#_destino_y),a
;Onitama.c:708: if (destino_x > 4 || destino_y > 4) continue;
	ld	a, #0x04
	ld	hl, #_destino_x
	sub	a, (hl)
	jp	C, 00114$
	ld	a, #0x04
	ld	hl, #_destino_y
	sub	a, (hl)
	jp	C, 00114$
;Onitama.c:711: int8_t destino = casillas_tablero[destino_y][destino_x];
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_destino_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
;Onitama.c:712: if (destino == 1 || destino == 2) continue;
	cp	a, #0x01
	jp	Z,00114$
	sub	a, #0x02
	jp	Z,00114$
;Onitama.c:715: if (movimiento_valido(origen_x, origen_y, destino_x, destino_y, carta_actual, 1)) {
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_carta_actual
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, (#_destino_y)
	ld	h, a
	ld	a, (#_destino_x)
	ld	l, a
	push	hl
	ld	hl, #_origen_y
	ld	e, (hl)
	ld	a, (#_origen_x)
	call	_movimiento_valido
	or	a, a
	jr	Z, 00114$
;Onitama.c:717: if (total_movimientos_cpu < MAX_MOVIMIENTOS_CPU) {
	ld	hl, #_total_movimientos_cpu
	ld	a, (hl)
	sub	a, #0x28
	jr	NC, 00114$
;Onitama.c:719: movimientos_cpu[total_movimientos_cpu].origen_x = origen_x;
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	a, (#_origen_x)
	ld	(bc), a
;Onitama.c:720: movimientos_cpu[total_movimientos_cpu].origen_y = origen_y;
	ld	hl, #_total_movimientos_cpu
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_origen_y)
	ld	(bc), a
;Onitama.c:721: movimientos_cpu[total_movimientos_cpu].destino_x = destino_x;
	ld	hl, #_total_movimientos_cpu
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_destino_x)
	ld	(bc), a
;Onitama.c:722: movimientos_cpu[total_movimientos_cpu].destino_y = destino_y;
	ld	hl, #_total_movimientos_cpu
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	inc	hl
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_destino_y)
	ld	(bc), a
;Onitama.c:723: movimientos_cpu[total_movimientos_cpu].indice_carta = indice_carta_usada;
	ld	hl, #_total_movimientos_cpu
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_indice_carta_usada)
	ld	(bc), a
;Onitama.c:725: total_movimientos_cpu++;
	ld	hl, #_total_movimientos_cpu
	inc	(hl)
00114$:
;Onitama.c:695: for (m = 0; m < cantidad && !encontrado; m++) {
	ldhl	sp,	#3
	inc	(hl)
	jp	00163$
00167$:
;Onitama.c:683: for (i = 0; i < 2 && !encontrado; i++) {
	ld	hl, #_i
	inc	(hl)
	jp	00166$
00171$:
;Onitama.c:674: for (x = 0; x < 5 && !encontrado; x++) {
	ld	hl, #_x
	inc	(hl)
	jp	00170$
00175$:
;Onitama.c:673: for (y = 0; y < 5 && !encontrado; y++) {
	ld	hl, #_y
	inc	(hl)
	jp	00174$
00121$:
;Onitama.c:734: if (total_movimientos_cpu > 0) {
	ld	a, (#_total_movimientos_cpu)
	or	a, a
	jp	Z, 00179$
;Onitama.c:736: if (modo_juego == 1) {
	ld	a, (#_modo_juego)
	dec	a
	jr	NZ, 00157$
;Onitama.c:737: profundidad_minimax = 2;
	ld	hl, #_profundidad_minimax
	ld	(hl), #0x02
;Onitama.c:738: ejecutar_minimax();
	call	_ejecutar_minimax
	jp	00158$
00157$:
;Onitama.c:739: } else if (modo_juego == 2) {
	ld	a, (#_modo_juego)
	sub	a, #0x02
	jr	NZ, 00154$
;Onitama.c:740: profundidad_minimax = 3;
	ld	hl, #_profundidad_minimax
	ld	(hl), #0x03
;Onitama.c:741: ejecutar_minimax();
	call	_ejecutar_minimax
	jp	00158$
00154$:
;Onitama.c:744: mejor_valor = -1000;
	ld	hl, #_mejor_valor
	ld	a, #0x18
	ld	(hl+), a
	ld	(hl), #0xfc
;Onitama.c:745: mejor_mov = movimientos_cpu[0];
	ld	de, #0x0005
	push	de
	ld	bc, #_movimientos_cpu
	ld	de, #_mejor_mov
	call	___memcpy
;Onitama.c:747: for (i = 0; i < total_movimientos_cpu; i++) {
	ld	hl, #_i
	ld	(hl), #0x00
00177$:
	ld	a, (#_i)
	ld	hl, #_total_movimientos_cpu
	sub	a, (hl)
	jp	NC, 00158$
;Onitama.c:748: m = movimientos_cpu[i];
	ld	hl, #_i
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	de, #0x0005
	push	de
	ld	de, #_m
	call	___memcpy
;Onitama.c:749: valor = 0;
	xor	a, a
	ld	hl, #_valor
	ld	(hl+), a
	ld	(hl), a
;Onitama.c:750: pieza = casillas_tablero[m.origen_y][m.origen_x];
	ld	hl, #(_m + 1)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	a, l
	add	a, #<(_casillas_tablero)
	ld	c, a
	ld	a, h
	adc	a, #>(_casillas_tablero)
	ld	b, a
	ld	hl, #_m
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
	ld	(#_pieza),a
;Onitama.c:751: destino = casillas_tablero[m.destino_y][m.destino_x];
	ld	hl, #(_m + 3)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	a, l
	add	a, #<(_casillas_tablero)
	ld	c, a
	ld	a, h
	adc	a, #>(_casillas_tablero)
	ld	b, a
	ld	hl, #(_m + 2)
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
	ld	(#_destino),a
;Onitama.c:753: pieza_destino = casillas_tablero[m.destino_y][m.destino_x];
	ld	hl, #(_m + 3)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	a, l
	add	a, #<(_casillas_tablero)
	ld	c, a
	ld	a, h
	adc	a, #>(_casillas_tablero)
	ld	b, a
	ld	hl, #(_m + 2)
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
;Onitama.c:754: es_captura = (pieza_destino != 0);
	ld	(#_pieza_destino), a
	sub	a, #0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	(#_es_captura),a
;Onitama.c:755: copiar_tablero(casillas_tablero, tablero_sim);
	ld	bc, #_tablero_sim
	ld	de, #_casillas_tablero
	call	_copiar_tablero
;Onitama.c:756: aplicar_movimiento_simulado(tablero_sim, &m);
	ld	bc, #_m
	ld	de, #_tablero_sim
	call	_aplicar_movimiento_simulado
;Onitama.c:758: pieza_en_peligro = 0;
	ld	hl, #_pieza_en_peligro
	ld	(hl), #0x00
;Onitama.c:759: if (pieza != 2) {
	ld	a, (#_pieza)
	sub	a, #0x02
	jr	Z, 00123$
;Onitama.c:760: pieza_en_peligro = pieza_roja_en_peligro_sim(tablero_sim, cartas_partida, m.destino_x, m.destino_y);
	ld	hl, #(_m + 3)
	ld	b, (hl)
	ld	a, (#(_m + 2) + 0)
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	bc, #_cartas_partida
	ld	de, #_tablero_sim
	call	_pieza_roja_en_peligro_sim
	ld	(#_pieza_en_peligro),a
00123$:
;Onitama.c:762: mal_intercambio = 0;
	ld	hl, #_mal_intercambio
	ld	(hl), #0x00
;Onitama.c:763: if (pieza != 2 && pieza_en_peligro) {
	ld	a, (#_pieza)
	sub	a, #0x02
	jr	Z, 00125$
	ld	a, (#_pieza_en_peligro)
	or	a, a
	jr	Z, 00125$
;Onitama.c:764: mal_intercambio = evaluar_intercambio_basico(tablero_sim, cartas_partida, m.destino_x, m.destino_y);
	ld	hl, #(_m + 3)
	ld	b, (hl)
	ld	a, (#(_m + 2) + 0)
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	bc, #_cartas_partida
	ld	de, #_tablero_sim
	call	_evaluar_intercambio_basico
	ld	(#_mal_intercambio),a
00125$:
;Onitama.c:767: uint8_t gana = comprobar_victoria_sim(tablero_sim);
	ld	de, #_tablero_sim
	call	_comprobar_victoria_sim
;Onitama.c:768: if (gana == 2) {
	sub	a, #0x02
	jr	NZ, 00128$
;Onitama.c:769: mejor_mov = m;
	ld	de, #0x0005
	push	de
	ld	bc, #_m
	ld	de, #_mejor_mov
	call	___memcpy
;Onitama.c:770: break;
	jp	00158$
00128$:
;Onitama.c:773: uint8_t peligro_despues_sim = master_rojo_en_peligro_sim(tablero_sim, cartas_partida);
	ld	bc, #_cartas_partida
	ld	de, #_tablero_sim
	call	_master_rojo_en_peligro_sim
;Onitama.c:775: if (peligro_despues_sim) valor -= 100;
	ldhl	sp,#0
	ld	(hl), a
	or	a, a
	jr	Z, 00130$
	ld	hl, #_valor
	ld	a, (hl+)
	ld	c, (hl)
	dec	hl
	add	a, #0x9c
	ld	b, a
	ld	a, c
	adc	a, #0xff
	ld	(hl), b
	inc	hl
	ld	(hl), a
00130$:
;Onitama.c:777: if (es_captura) {
	ld	a, (#_es_captura)
	or	a, a
	jr	Z, 00138$
;Onitama.c:775: if (peligro_despues_sim) valor -= 100;
	ld	a, (#_valor)
	ldhl	sp,	#2
	ld	(hl), a
	ld	a, (#_valor + 1)
	ldhl	sp,	#3
	ld	(hl), a
;Onitama.c:778: if (!peligro_despues_sim) valor += 50;
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	NZ, 00135$
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0032
	add	hl, de
	ld	c, l
	ld	a, h
	ld	hl, #_valor
	ld	(hl), c
	inc	hl
	ld	(hl), a
	jr	00138$
00135$:
;Onitama.c:780: if (pieza != 2) valor += 10;
	ld	a, (#_pieza)
	sub	a, #0x02
	jr	Z, 00132$
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	ld	c, l
	ld	a, h
	ld	hl, #_valor
	ld	(hl), c
	inc	hl
	ld	(hl), a
	jr	00138$
00132$:
;Onitama.c:781: else valor -= 100;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0064
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	c, e
	ld	hl, #_valor
	ld	(hl), c
	inc	hl
	ld	(hl), a
00138$:
;Onitama.c:785: uint8_t pieza_origen = casillas_tablero[m.origen_y][m.origen_x];
	ld	a, (#(_m + 1) + 0)
	ldhl	sp,#3
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	a, l
	add	a, #<(_casillas_tablero)
	ld	c, a
	ld	a, h
	adc	a, #>(_casillas_tablero)
	ld	b, a
	ld	a, (#_m + 0)
	ldhl	sp,#2
	ld	(hl), a
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
;Onitama.c:786: if (pieza_origen == 2 && !peligro_despues_sim) {
	sub	a, #0x02
	jr	NZ, 00142$
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	NZ, 00142$
;Onitama.c:787: uint8_t dist_actual = (4 - m.origen_y) + (m.origen_x > 2 ? m.origen_x - 2 : 2 - m.origen_x);
	ld	a, #0x04
	ldhl	sp,	#3
	sub	a, (hl)
	dec	hl
	dec	hl
	ld	(hl+), a
	ld	a, (hl+)
	ld	(hl-), a
	ld	a, #0x02
	sub	a, (hl)
	jr	NC, 00181$
	inc	hl
	dec	(hl)
	dec	(hl)
	jr	00182$
00181$:
	ld	a, #0x02
	ldhl	sp,	#3
	sub	a, (hl)
	ld	(hl), a
00182$:
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ld	a, (hl-)
	dec	hl
;Onitama.c:788: uint8_t dist_nueva  = (4 - m.destino_y) + (m.destino_x > 2 ? m.destino_x - 2 : 2 - m.destino_x);
	ld	(hl+), a
	ld	a, (#(_m + 3) + 0)
	ld	c, a
	ld	a, #0x04
	sub	a, c
	ld	(hl), a
	ld	hl, #(_m + 2)
	ld	c, (hl)
	ldhl	sp,	#3
	ld	(hl), c
	ld	a, #0x02
	sub	a, c
	jr	NC, 00183$
	dec	(hl)
	dec	(hl)
	jr	00184$
00183$:
	ld	a, #0x02
	ldhl	sp,	#3
	sub	a, (hl)
	ld	(hl), a
00184$:
	ldhl	sp,	#3
	ld	a, (hl-)
	add	a, (hl)
;Onitama.c:789: if (dist_nueva < dist_actual) valor += 25;
	dec	hl
	sub	a, (hl)
	jr	NC, 00142$
	ld	hl, #_valor
	ld	a, (hl+)
	ld	b, (hl)
	dec	hl
	add	a, #0x19
	ld	c, a
	ld	a, b
	adc	a, #0x00
	ld	(hl), c
	inc	hl
	ld	(hl), a
00142$:
;Onitama.c:792: if (!peligro_despues_sim) {
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	NZ, 00147$
;Onitama.c:793: uint8_t dist_actual = (m.origen_y > 2 ? m.origen_y - 2 : 2 - m.origen_y)
	ld	hl, #(_m + 1)
	ld	b, (hl)
	ld	c, b
	ld	a, #0x02
	sub	a, b
	jr	NC, 00185$
	ld	a, c
	add	a, #0xfe
	ldhl	sp,	#2
	ld	(hl), a
	jr	00186$
00185$:
	ld	a, #0x02
	sub	a, c
	ldhl	sp,	#2
	ld	(hl), a
00186$:
	ld	hl, #_m
	ld	c, (hl)
	ldhl	sp,	#3
	ld	(hl), c
	ld	a, #0x02
	sub	a, c
	jr	NC, 00187$
	ld	a, (hl)
	dec	a
	dec	a
	jr	00188$
00187$:
	ld	a, #0x02
	ldhl	sp,	#3
	sub	a, (hl)
00188$:
	ldhl	sp,	#2
	add	a, (hl)
	ld	c, a
;Onitama.c:795: uint8_t dist_nueva  = (m.destino_y > 2 ? m.destino_y - 2 : 2 - m.destino_y)
	ld	hl, #(_m + 3)
	ld	l, (hl)
;	spillPairReg hl
	ld	b, l
	ld	a, #0x02
	sub	a, l
	jr	NC, 00189$
	ld	a, b
	add	a, #0xfe
	ldhl	sp,	#2
	ld	(hl), a
	jr	00190$
00189$:
	ld	a, #0x02
	sub	a, b
	ldhl	sp,	#2
	ld	(hl), a
00190$:
	ld	hl, #(_m + 2)
	ld	b, (hl)
	ld	e, b
	ld	a, #0x02
	sub	a, b
	jr	NC, 00191$
	ld	a, e
	add	a, #0xfe
	ldhl	sp,	#3
	ld	(hl), a
	jr	00192$
00191$:
	ld	a, #0x02
	sub	a, e
	ldhl	sp,	#3
	ld	(hl), a
00192$:
	ldhl	sp,	#3
	ld	a, (hl-)
	add	a, (hl)
;Onitama.c:797: if (dist_nueva < dist_actual) valor += 5;
	sub	a, c
	jr	NC, 00147$
	ld	hl, #_valor
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl-)
	ld	b, a
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00147$:
;Onitama.c:800: const Carta* carta_entregada = cartas_partida[m.indice_carta];
	ld	a, (#(_m + 4) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, hl
	ld	de, #_cartas_partida
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;Onitama.c:801: if (rival_puede_ganar_templo_con_carta(tablero_sim, carta_entregada)) valor -= 100;
	ld	de, #_tablero_sim
	call	_rival_puede_ganar_templo_con_carta
	or	a, a
	jr	Z, 00149$
	ld	hl, #_valor
	ld	a, (hl+)
	ld	b, (hl)
	dec	hl
	add	a, #0x9c
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	(hl), c
	inc	hl
	ld	(hl), a
00149$:
;Onitama.c:803: if (valor > mejor_valor) {
	ld	de, #_mejor_valor
	ld	hl, #_valor
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00533$
	bit	7, d
	jr	NZ, 00534$
	cp	a, a
	jr	00534$
00533$:
	bit	7, d
	jr	Z, 00534$
	scf
00534$:
	jr	NC, 00178$
;Onitama.c:804: mejor_valor = valor;
	ld	a, (#_valor)
	ld	(#_mejor_valor),a
	ld	a, (#_valor + 1)
	ld	(#_mejor_valor + 1),a
;Onitama.c:805: mejor_mov = m;
	ld	de, #0x0005
	push	de
	ld	bc, #_m
	ld	de, #_mejor_mov
	call	___memcpy
00178$:
;Onitama.c:747: for (i = 0; i < total_movimientos_cpu; i++) {
	ld	hl, #_i
	inc	(hl)
	jp	00177$
00158$:
;Onitama.c:810: hay_ganador = 0;
	ld	hl, #_hay_ganador
;Onitama.c:812: m = mejor_mov;
	ld	de, #0x0005
	ld	(hl), d
	push	de
	ld	bc, #_mejor_mov
	ld	de, #_m
	call	___memcpy
;Onitama.c:813: era_captura_cpu = (casillas_tablero[m.destino_y][m.destino_x] != 0);
	ld	hl, #(_m + 3)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_casillas_tablero
	add	hl, de
	ld	bc, #_m + 2
	ld	a, (bc)
	add	a, l
	ld	e, a
	ld	a, #0x00
	adc	a, h
	ld	d, a
	ld	a, (de)
	sub	a, #0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	(#_era_captura_cpu),a
;Onitama.c:814: casillas_tablero[m.destino_y][m.destino_x] = casillas_tablero[m.origen_y][m.origen_x];
	ld	a, (#(_m + 3) + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	a, l
	add	a, #<(_casillas_tablero)
	ld	e, a
	ld	a, h
	adc	a, #>(_casillas_tablero)
	ld	d, a
	ld	a, (bc)
	ld	l, a
	ld	h, #0x00
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	hl, #(_m + 1)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	a, l
	add	a, #<(_casillas_tablero)
	ld	c, a
	ld	a, h
	adc	a, #>(_casillas_tablero)
	ld	b, a
	ld	hl, #_m
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, (hl)
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;Onitama.c:815: casillas_tablero[m.origen_y][m.origen_x] = 0;
	ld	hl, #(_m + 1)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	a, l
	add	a, #<(_casillas_tablero)
	ld	c, a
	ld	a, h
	adc	a, #>(_casillas_tablero)
	ld	b, a
	ld	hl, #_m
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	(hl), #0x00
;Onitama.c:816: sfx_mover_pieza_rojo();
	call	_sfx_mover_pieza_rojo
;Onitama.c:817: posicion_ejercitos_visual();
	call	_posicion_ejercitos_visual
;Onitama.c:818: comprobar_victoria();
	call	_comprobar_victoria
;Onitama.c:820: const Carta* temp = cartas_partida[4];
	ld	hl, #(_cartas_partida + 8)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;Onitama.c:821: cartas_partida[4] = cartas_partida[m.indice_carta];
	ld	hl, #(_m + 4)
	ld	l, (hl)
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_cartas_partida
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	de, #(_cartas_partida + 8)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;Onitama.c:822: cartas_partida[m.indice_carta] = temp;
	ld	hl, #(_m + 4)
	ld	l, (hl)
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_cartas_partida
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;Onitama.c:823: actualizar_cartas_visual();
	call	_actualizar_cartas_visual
;Onitama.c:824: jugador_activo = 0;
	ld	hl, #_jugador_activo
	ld	(hl), #0x00
00179$:
;Onitama.c:826: }
	add	sp, #4
	ret
;Onitama.c:828: void aplicar_movimiento_simulado(uint8_t tablero_mov_sim[5][5], MovimientoCPU* mov) {
;	---------------------------------
; Function aplicar_movimiento_simulado
; ---------------------------------
_aplicar_movimiento_simulado::
	add	sp, #-6
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;Onitama.c:829: pieza_mov_sim = tablero_mov_sim[mov->origen_y][mov->origen_x];
	ld	l, c
	ld	h, b
	inc	hl
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	a, (hl)
	ld	(#_pieza_mov_sim),a
;Onitama.c:830: tablero_mov_sim[mov->destino_y][mov->destino_x] = pieza_mov_sim;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	add	a, e
	ld	e, a
	ld	a, #0x00
	adc	a, d
	ld	d, a
	ld	a, (#_pieza_mov_sim)
	ld	(de), a
;Onitama.c:831: tablero_mov_sim[mov->origen_y][mov->origen_x] = 0;
	pop	de
	push	de
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	(hl), #0x00
;Onitama.c:832: }
	add	sp, #6
	ret
;Onitama.c:834: uint8_t master_rojo_en_peligro_sim(uint8_t tablero[5][5], const Carta* cartas[5]) {
;	---------------------------------
; Function master_rojo_en_peligro_sim
; ---------------------------------
_master_rojo_en_peligro_sim::
	add	sp, #-16
	ldhl	sp,	#10
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#8
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:835: int8_t mx_local = -1;
	ldhl	sp,	#0
;Onitama.c:836: int8_t my_local = -1;
	ld	a, #0xff
	ld	(hl+), a
	ld	(hl), #0xff
;Onitama.c:841: for (y = 0; y < 5; y++) {
	ld	c, #0x00
;Onitama.c:842: for (x = 0; x < 5; x++) {
00136$:
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#16
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#15
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#10
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	b, #0x00
00120$:
;Onitama.c:843: if (tablero[y][x] == 2) {
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00121$
;Onitama.c:844: mx_local = x;
	ldhl	sp,	#0
;Onitama.c:845: my_local = y;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
00121$:
;Onitama.c:842: for (x = 0; x < 5; x++) {
	inc	b
	ld	a, b
	sub	a, #0x05
	jr	C, 00120$
;Onitama.c:841: for (y = 0; y < 5; y++) {
	inc	c
	ld	a, c
	sub	a, #0x05
	jr	C, 00136$
;Onitama.c:850: for (y = 0; y < 5; y++) {
	ldhl	sp,	#12
	ld	(hl), #0x00
;Onitama.c:851: for (x = 0; x < 5; x++) {
00150$:
	ldhl	sp,	#12
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#10
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#13
	ld	(hl), #0x00
00129$:
;Onitama.c:853: if (tablero[y][x] == 3 || tablero[y][x] == 4) {
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#13
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	cp	a, #0x03
	jr	Z, 00149$
	sub	a, #0x04
	jp	NZ,00130$
;Onitama.c:855: for (c = 0; c < 2; c++) {
00149$:
	ldhl	sp,	#14
	ld	(hl), #0x00
00127$:
;Onitama.c:857: const Carta* carta = cartas[c]; // cartas azul
	ldhl	sp,	#14
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
	inc	de
	ld	a, (de)
;Onitama.c:859: for (k = 0; k < carta->cantidad; k++) {
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ldhl	sp,	#15
	ld	(hl), #0x00
00125$:
	ld	a, (bc)
	ld	e, a
	ldhl	sp,	#15
	ld	a, (hl)
	sub	a, e
	jr	NC, 00128$
;Onitama.c:861: int8_t dx = carta->movimientos[k].dx;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#15
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sla	e
	rl	d
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
;Onitama.c:862: int8_t dy = carta->movimientos[k].dy;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, (hl)
;Onitama.c:864: int8_t destino_x = x + dx;
	ldhl	sp,	#13
	ld	d, (hl)
	add	a, d
	ldhl	sp,	#6
	ld	(hl), a
;Onitama.c:865: int8_t destino_y = y + dy;
	ldhl	sp,	#12
	ld	a, (hl)
	add	a, e
	ldhl	sp,	#7
;Onitama.c:867: if (destino_x >= 0 && destino_x < 5 &&
	ld	(hl-), a
	bit	7, (hl)
	jr	NZ, 00126$
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00126$
;Onitama.c:868: destino_y >= 0 && destino_y < 5) {
	inc	hl
	bit	7, (hl)
	jr	NZ, 00126$
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00126$
;Onitama.c:870: if (destino_x == mx_local && destino_y == my_local) {
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#0
	sub	a, (hl)
	jr	NZ, 00126$
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NZ, 00126$
;Onitama.c:871: return 1;
	ld	a, #0x01
	jr	00133$
00126$:
;Onitama.c:859: for (k = 0; k < carta->cantidad; k++) {
	ldhl	sp,	#15
	inc	(hl)
	jr	00125$
00128$:
;Onitama.c:855: for (c = 0; c < 2; c++) {
	ldhl	sp,	#14
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x02
	jp	C, 00127$
00130$:
;Onitama.c:851: for (x = 0; x < 5; x++) {
	ldhl	sp,	#13
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00129$
;Onitama.c:850: for (y = 0; y < 5; y++) {
	dec	hl
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00150$
;Onitama.c:879: return 0;
	xor	a, a
00133$:
;Onitama.c:880: }
	add	sp, #16
	ret
;Onitama.c:882: void copiar_tablero(uint8_t origen[5][5], uint8_t destino[5][5]) {
;	---------------------------------
; Function copiar_tablero
; ---------------------------------
_copiar_tablero::
;Onitama.c:883: uint8_t* src = (uint8_t*)origen;
;Onitama.c:884: uint8_t* dst = (uint8_t*)destino;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;Onitama.c:886: while (n--) *dst++ = *src++;
	ld	c, #0x19
00101$:
	ld	a, c
	dec	c
	or	a, a
	ret	Z
	ld	a, (de)
	inc	de
	ld	(hl+), a
;Onitama.c:887: }
	jr	00101$
;Onitama.c:889: uint8_t comprobar_victoria_sim(uint8_t tablero[5][5]) {
;	---------------------------------
; Function comprobar_victoria_sim
; ---------------------------------
_comprobar_victoria_sim::
	push	de
;Onitama.c:891: hay_master_rojo_sim = 0;
	ld	hl, #_hay_master_rojo_sim
	ld	(hl), #0x00
;Onitama.c:892: hay_master_azul_sim = 0;
	ld	hl, #_hay_master_azul_sim
	ld	(hl), #0x00
;Onitama.c:895: for (y_sim = 0; y_sim < 5; y_sim++) {
	ld	hl, #_y_sim
	ld	(hl), #0x00
00119$:
;Onitama.c:896: for (x_sim = 0; x_sim < 5; x_sim++) {
	ld	hl, #_x_sim
	ld	(hl), #0x00
00117$:
;Onitama.c:898: if (tablero[y_sim][x_sim] == 2) {
	ld	hl, #_y_sim
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_x_sim
	ld	a, (hl)
	add	a, c
	ld	c, a
	ld	a, #0x00
	adc	a, b
	ld	b, a
	ld	a, (bc)
	ld	d, a
;Onitama.c:902: if (y_sim == 4 && x_sim == 2) {
	ld	a, (hl)
	sub	a, #0x02
	ld	a, #0x01
	jr	Z, 00208$
	xor	a, a
00208$:
	ld	e, a
;Onitama.c:898: if (tablero[y_sim][x_sim] == 2) {
	ld	a, d
	sub	a, #0x02
	jr	NZ, 00105$
;Onitama.c:899: hay_master_rojo_sim = 1;
	ld	hl, #_hay_master_rojo_sim
	ld	(hl), #0x01
;Onitama.c:902: if (y_sim == 4 && x_sim == 2) {
	ld	a, (#_y_sim)
	sub	a, #0x04
	jr	NZ, 00105$
	or	a, e
	jr	Z, 00105$
;Onitama.c:903: return 2; // gana rojo
	ld	a, #0x02
	jr	00121$
00105$:
;Onitama.c:907: if (tablero[y_sim][x_sim] == 4) {
	ld	a, (bc)
	sub	a, #0x04
	jr	NZ, 00118$
;Onitama.c:908: hay_master_azul_sim = 1;
	ld	hl, #_hay_master_azul_sim
	ld	(hl), #0x01
;Onitama.c:911: if (y_sim == 0 && x_sim == 2) {
	ld	a, (#_y_sim)
	or	a, a
	jr	NZ, 00118$
	or	a, e
	jr	Z, 00118$
;Onitama.c:912: return 1; // gana azul
	ld	a, #0x01
	jr	00121$
00118$:
;Onitama.c:896: for (x_sim = 0; x_sim < 5; x_sim++) {
	ld	hl, #_x_sim
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00117$
;Onitama.c:895: for (y_sim = 0; y_sim < 5; y_sim++) {
	ld	hl, #_y_sim
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00119$
;Onitama.c:919: if (!hay_master_azul_sim) return 2;
	ld	a, (#_hay_master_azul_sim)
	or	a, a
	jr	NZ, 00114$
	ld	a, #0x02
	jr	00121$
00114$:
;Onitama.c:920: if (!hay_master_rojo_sim) return 1;
	ld	a, (#_hay_master_rojo_sim)
	or	a, a
;Onitama.c:922: return 0;
	ld	a, #0x01
	jr	Z, 00121$
	xor	a, a
00121$:
;Onitama.c:923: }
	inc	sp
	inc	sp
	ret
;Onitama.c:925: uint8_t rival_puede_ganar_templo_con_carta(uint8_t tablero[5][5], const Carta* carta) {
;	---------------------------------
; Function rival_puede_ganar_templo_con_carta
; ---------------------------------
_rival_puede_ganar_templo_con_carta::
	add	sp, #-11
	ldhl	sp,	#8
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:930: for (y = 0; y < 5; y++) {
	ldhl	sp,	#10
	ld	(hl), #0x00
;Onitama.c:931: for (x = 0; x < 5; x++) {
00132$:
	ldhl	sp,	#10
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ld	c, #0x00
00117$:
;Onitama.c:934: if (tablero[y][x] == 4) {
	pop	de
	push	de
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	sub	a, #0x04
	jr	NZ, 00118$
;Onitama.c:936: for (k = 0; k < carta->cantidad; k++) {
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	b, #0x00
00115$:
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sub	a, l
	jr	NC, 00118$
;Onitama.c:938: int8_t dx = carta->movimientos[k].dx;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, b
	xor	a, a
	ld	d, a
	sla	e
	rl	d
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
;Onitama.c:939: int8_t dy = carta->movimientos[k].dy;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, (hl)
;Onitama.c:941: int8_t destino_x = x + dx;
	ld	d, c
	add	a, d
	ldhl	sp,	#4
	ld	(hl), a
;Onitama.c:942: int8_t destino_y = y + dy;
	ldhl	sp,	#10
	ld	a, (hl)
	add	a, e
	ldhl	sp,	#5
;Onitama.c:944: if (destino_x >= 0 && destino_x < 5 &&
	ld	(hl-), a
	bit	7, (hl)
	jr	NZ, 00116$
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00116$
;Onitama.c:945: destino_y >= 0 && destino_y < 5) {
	inc	hl
	bit	7, (hl)
	jr	NZ, 00116$
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00116$
;Onitama.c:948: if (destino_x == 2 && destino_y == 0) {
	dec	hl
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00116$
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
	jr	NZ, 00116$
;Onitama.c:949: return 1;
	ld	a, #0x01
	jr	00121$
00116$:
;Onitama.c:936: for (k = 0; k < carta->cantidad; k++) {
	inc	b
	jr	00115$
00118$:
;Onitama.c:931: for (x = 0; x < 5; x++) {
	inc	c
	ld	a, c
	sub	a, #0x05
	jp	C, 00117$
;Onitama.c:930: for (y = 0; y < 5; y++) {
	ldhl	sp,	#10
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00132$
;Onitama.c:957: return 0;
	xor	a, a
00121$:
;Onitama.c:958: }
	add	sp, #11
	ret
;Onitama.c:960: void generar_movimientos_rojo(uint8_t tablero[5][5], const Carta* cartas[5], MovimientoCPU* lista, uint8_t* total) {
;	---------------------------------
; Function generar_movimientos_rojo
; ---------------------------------
_generar_movimientos_rojo::
	add	sp, #-20
	ldhl	sp,	#14
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#12
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:963: *total = 0;
	ldhl	sp,	#24
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#25
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	pop	hl
	ld	(hl), #0x00
	push	hl
;Onitama.c:965: for (ry = 0; ry < 5; ry++) {
	ldhl	sp,	#16
	ld	(hl), #0x00
;Onitama.c:966: for (rx = 0; rx < 5; rx++) {
00141$:
	ldhl	sp,	#16
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#14
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#17
	ld	(hl), #0x00
00124$:
;Onitama.c:967: if (tablero[ry][rx] == 1 || tablero[ry][rx] == 2) {
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#17
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#20
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#19
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
	dec	a
	jr	Z, 00140$
	ldhl	sp,	#19
	ld	a, (hl)
	sub	a, #0x02
	jp	NZ,00125$
;Onitama.c:968: for (ri = 0; ri < 2; ri++) {
00140$:
	ldhl	sp,	#18
	ld	(hl), #0x00
00122$:
;Onitama.c:969: gen_carta    = cartas[ri + 2];
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl-), a
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl-)
	dec	hl
	ld	(hl-), a
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#12
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #_gen_carta
	ld	(hl+), a
	inc	de
	ld	a, (de)
;Onitama.c:970: gen_cantidad = gen_carta->cantidad;
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	(#_gen_cantidad),a
;Onitama.c:971: for (rm = 0; rm < gen_cantidad; rm++) {
	ldhl	sp,	#19
	ld	(hl), #0x00
00121$:
	ldhl	sp,	#19
	ld	a, (hl)
	ld	hl, #_gen_cantidad
	sub	a, (hl)
	jp	NC, 00123$
;Onitama.c:970: gen_cantidad = gen_carta->cantidad;
	ld	a, (#_gen_carta)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (#_gen_carta + 1)
	ldhl	sp,	#9
;Onitama.c:972: gen_dx = -(gen_carta->movimientos[rm].dx);
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#19
	ld	c, (hl)
	xor	a, a
	ld	b, a
	sla	c
	rl	b
	ldhl	sp,	#10
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	e, a
	xor	a, a
	sub	a, e
	ld	(#_gen_dx),a
;Onitama.c:973: gen_dy = -(gen_carta->movimientos[rm].dy);
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	inc	hl
	ld	c, (hl)
	xor	a, a
	sub	a, c
	ld	(#_gen_dy),a
;Onitama.c:975: if ((int8_t)rx + gen_dx < 0 || (int8_t)rx + gen_dx > 4) continue;
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	a, (#_gen_dx)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	bit	7, (hl)
	jp	NZ, 00112$
	dec	hl
	ld	a, #0x04
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00237$
	bit	7, d
	jr	NZ, 00238$
	cp	a, a
	jr	00238$
00237$:
	bit	7, d
	jr	Z, 00238$
	scf
00238$:
	jp	C, 00112$
;Onitama.c:976: if ((int8_t)ry + gen_dy < 0 || (int8_t)ry + gen_dy > 4) continue;
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl), a
	ld	a, (#_gen_dy)
	ldhl	sp,	#8
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	bit	7, (hl)
	jp	NZ, 00112$
	dec	hl
	ld	a, #0x04
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00239$
	bit	7, d
	jr	NZ, 00240$
	cp	a, a
	jr	00240$
00239$:
	bit	7, d
	jr	Z, 00240$
	scf
00240$:
	jp	C, 00112$
;Onitama.c:978: gen_destino_x     = (uint8_t)((int8_t)rx + gen_dx);
	ldhl	sp,	#4
	ld	a, (hl)
	ld	hl, #_gen_dx
	add	a, (hl)
	ld	(#_gen_destino_x),a
;Onitama.c:979: gen_destino_y     = (uint8_t)((int8_t)ry + gen_dy);
	ldhl	sp,	#5
	ld	a, (hl)
	ld	hl, #_gen_dy
	add	a, (hl)
	ld	hl, #_gen_destino_y
	ld	(hl), a
;Onitama.c:980: gen_destino_pieza = tablero[gen_destino_y][gen_destino_x];
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#14
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_gen_destino_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
;Onitama.c:982: if (gen_destino_pieza == 1 || gen_destino_pieza == 2) continue;
	ld	(#_gen_destino_pieza), a
	dec	a
	jp	Z,00112$
	ld	a, (#_gen_destino_pieza)
	sub	a, #0x02
	jp	Z,00112$
;Onitama.c:984: if (*total < MAX_MOVIMIENTOS_CPU) {
	pop	de
	push	de
	ld	a, (de)
	cp	a, #0x28
	jp	NC, 00112$
;Onitama.c:985: lista[*total].origen_x     = rx;
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#17
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:986: lista[*total].origen_y     = ry;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#16
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:987: lista[*total].destino_x    = gen_destino_x;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_gen_destino_x)
	ld	(bc), a
;Onitama.c:988: lista[*total].destino_y    = gen_destino_y;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_gen_destino_y)
	ld	(bc), a
;Onitama.c:989: lista[*total].indice_carta = ri + 2;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#18
	ld	a, (hl)
	add	a, #0x02
	ld	(bc), a
;Onitama.c:990: (*total)++;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	c
	pop	hl
	push	hl
	ld	(hl), c
00112$:
;Onitama.c:971: for (rm = 0; rm < gen_cantidad; rm++) {
	ldhl	sp,	#19
	inc	(hl)
	jp	00121$
00123$:
;Onitama.c:968: for (ri = 0; ri < 2; ri++) {
	ldhl	sp,	#18
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x02
	jp	C, 00122$
00125$:
;Onitama.c:966: for (rx = 0; rx < 5; rx++) {
	ldhl	sp,	#17
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00124$
;Onitama.c:965: for (ry = 0; ry < 5; ry++) {
	dec	hl
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00141$
;Onitama.c:997: }
	add	sp, #20
	pop	hl
	add	sp, #4
	jp	(hl)
;Onitama.c:1000: void generar_movimientos_azul(uint8_t tablero[5][5], const Carta* cartas[5], MovimientoCPU* lista, uint8_t* total) {
;	---------------------------------
; Function generar_movimientos_azul
; ---------------------------------
_generar_movimientos_azul::
	add	sp, #-20
	ldhl	sp,	#14
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#12
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1003: *total = 0;
	ldhl	sp,	#24
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#25
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	pop	hl
	ld	(hl), #0x00
	push	hl
;Onitama.c:1005: for (ay = 0; ay < 5; ay++) {
	ldhl	sp,	#16
	ld	(hl), #0x00
;Onitama.c:1006: for (ax = 0; ax < 5; ax++) {
00141$:
	ldhl	sp,	#16
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#14
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#17
	ld	(hl), #0x00
00124$:
;Onitama.c:1007: if (tablero[ay][ax] == 3 || tablero[ay][ax] == 4) {
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#17
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#20
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#19
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
	sub	a, #0x03
	jr	Z, 00140$
	ldhl	sp,	#19
	ld	a, (hl)
	sub	a, #0x04
	jp	NZ,00125$
;Onitama.c:1008: for (ai = 0; ai < 2; ai++) {
00140$:
	ldhl	sp,	#18
	ld	(hl), #0x00
00122$:
;Onitama.c:1009: gen_carta    = cartas[ai];
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#10
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl-)
	dec	hl
	ld	(hl-), a
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#12
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	hl, #_gen_carta
	ld	(hl+), a
	inc	de
	ld	a, (de)
;Onitama.c:1010: gen_cantidad = gen_carta->cantidad;
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	(#_gen_cantidad),a
;Onitama.c:1011: for (am = 0; am < gen_cantidad; am++) {
	ldhl	sp,	#19
	ld	(hl), #0x00
00121$:
	ldhl	sp,	#19
	ld	a, (hl)
	ld	hl, #_gen_cantidad
	sub	a, (hl)
	jp	NC, 00123$
;Onitama.c:1010: gen_cantidad = gen_carta->cantidad;
	ld	a, (#_gen_carta)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (#_gen_carta + 1)
	ldhl	sp,	#9
;Onitama.c:1012: gen_dx = gen_carta->movimientos[am].dx;
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#19
	ld	c, (hl)
	xor	a, a
	ld	b, a
	sla	c
	rl	b
	ldhl	sp,	#10
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	(#_gen_dx),a
;Onitama.c:1013: gen_dy = gen_carta->movimientos[am].dy;
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	inc	hl
	ld	a, (hl)
	ld	(#_gen_dy),a
;Onitama.c:1015: if ((int8_t)ax + gen_dx < 0 || (int8_t)ax + gen_dx > 4) continue;
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	a, (#_gen_dx)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	bit	7, (hl)
	jp	NZ, 00112$
	dec	hl
	ld	a, #0x04
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00237$
	bit	7, d
	jr	NZ, 00238$
	cp	a, a
	jr	00238$
00237$:
	bit	7, d
	jr	Z, 00238$
	scf
00238$:
	jp	C, 00112$
;Onitama.c:1016: if ((int8_t)ay + gen_dy < 0 || (int8_t)ay + gen_dy > 4) continue;
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl), a
	ld	a, (#_gen_dy)
	ldhl	sp,	#8
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#12
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#11
	ld	(hl), a
	bit	7, (hl)
	jp	NZ, 00112$
	dec	hl
	ld	a, #0x04
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00239$
	bit	7, d
	jr	NZ, 00240$
	cp	a, a
	jr	00240$
00239$:
	bit	7, d
	jr	Z, 00240$
	scf
00240$:
	jp	C, 00112$
;Onitama.c:1018: gen_destino_x     = (uint8_t)((int8_t)ax + gen_dx);
	ldhl	sp,	#4
	ld	a, (hl)
	ld	hl, #_gen_dx
	add	a, (hl)
	ld	(#_gen_destino_x),a
;Onitama.c:1019: gen_destino_y     = (uint8_t)((int8_t)ay + gen_dy);
	ldhl	sp,	#5
	ld	a, (hl)
	ld	hl, #_gen_dy
	add	a, (hl)
	ld	hl, #_gen_destino_y
	ld	(hl), a
;Onitama.c:1020: gen_destino_pieza = tablero[gen_destino_y][gen_destino_x];
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#14
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_gen_destino_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	a, (hl)
;Onitama.c:1022: if (gen_destino_pieza == 3 || gen_destino_pieza == 4) continue;
	ld	(#_gen_destino_pieza), a
	sub	a, #0x03
	jp	Z,00112$
	ld	a, (#_gen_destino_pieza)
	sub	a, #0x04
	jp	Z,00112$
;Onitama.c:1024: if (*total < MAX_MOVIMIENTOS_CPU) {
	pop	de
	push	de
	ld	a, (de)
	cp	a, #0x28
	jp	NC, 00112$
;Onitama.c:1025: lista[*total].origen_x     = ax;
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#17
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:1026: lista[*total].origen_y     = ay;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#16
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:1027: lista[*total].destino_x    = gen_destino_x;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_gen_destino_x)
	ld	(bc), a
;Onitama.c:1028: lista[*total].destino_y    = gen_destino_y;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (#_gen_destino_y)
	ld	(bc), a
;Onitama.c:1029: lista[*total].indice_carta = ai;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#18
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:1030: (*total)++;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	c
	pop	hl
	push	hl
	ld	(hl), c
00112$:
;Onitama.c:1011: for (am = 0; am < gen_cantidad; am++) {
	ldhl	sp,	#19
	inc	(hl)
	jp	00121$
00123$:
;Onitama.c:1008: for (ai = 0; ai < 2; ai++) {
	ldhl	sp,	#18
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x02
	jp	C, 00122$
00125$:
;Onitama.c:1006: for (ax = 0; ax < 5; ax++) {
	ldhl	sp,	#17
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00124$
;Onitama.c:1005: for (ay = 0; ay < 5; ay++) {
	dec	hl
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00141$
;Onitama.c:1037: }
	add	sp, #20
	pop	hl
	add	sp, #4
	jp	(hl)
;Onitama.c:1039: int16_t evaluar_estatico(uint8_t tablero[5][5], const Carta* cartas_sim[5]) {
;	---------------------------------
; Function evaluar_estatico
; ---------------------------------
_evaluar_estatico::
	add	sp, #-19
	ldhl	sp,	#13
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#11
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1041: int16_t puntos = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl+), a
;Onitama.c:1042: int8_t mx_rojo = -1, my_rojo = -1;
	ld	(hl+), a
;Onitama.c:1043: int8_t mx_azul = -1, my_azul = -1;
	ld	a,#0xff
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0xff
	ld	(hl+), a
	ld	(hl), #0xff
;Onitama.c:1045: int8_t peones_rojo = 0;
	ldhl	sp,	#10
	ld	(hl), #0x00
;Onitama.c:1046: int8_t peones_azul = 0;
	ldhl	sp,	#18
	ld	(hl), #0x00
;Onitama.c:1049: for (ey = 0; ey < 5; ey++) {
	ldhl	sp,	#15
	ld	(hl), #0x00
;Onitama.c:1050: for (ex = 0; ex < 5; ex++) {
00164$:
	ldhl	sp,	#15
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl+), a
	inc	hl
	ld	a, (hl-)
	ld	(hl+), a
	ld	(hl), #0x00
00141$:
;Onitama.c:1051: pieza_eval = tablero[ey][ex];
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#18
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#8
;Onitama.c:1052: if (pieza_eval == 1) {
	ld	(hl), a
	dec	a
	jr	NZ, 00102$
;Onitama.c:1053: peones_rojo++;
	ldhl	sp,	#16
	inc	(hl)
;Onitama.c:1055: puntos += (int16_t)ey * 15;
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	e, (hl)
	dec	hl
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
00102$:
;Onitama.c:1057: if (pieza_eval == 3) {
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ, 00104$
;Onitama.c:1058: peones_azul++;
	ldhl	sp,	#17
	inc	(hl)
;Onitama.c:1060: puntos -= (int16_t)(4 - ey) * 15;
	dec	hl
	dec	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x04
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	e, (hl)
	dec	hl
	sub	a, c
	ld	c, a
	ld	a, e
	sbc	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
00104$:
;Onitama.c:1062: if (pieza_eval == 2) { mx_rojo = ex; my_rojo = ey; }
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00106$
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
00106$:
;Onitama.c:1063: if (pieza_eval == 4) { mx_azul = ex; my_azul = ey; }
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00142$
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
00142$:
;Onitama.c:1050: for (ex = 0; ex < 5; ex++) {
	ldhl	sp,	#18
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00141$
;Onitama.c:1049: for (ey = 0; ey < 5; ey++) {
	dec	hl
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#10
	ld	(hl), a
	ldhl	sp,	#17
	ld	a, (hl+)
	ld	(hl), a
	ldhl	sp,	#15
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00164$
;Onitama.c:1068: puntos += (int16_t)(peones_rojo - peones_azul) * 80;
	inc	hl
	ld	a, (hl+)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	a, (hl)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	e, (hl)
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ldhl	sp,	#16
	ld	(hl), c
	inc	hl
	ld	(hl), a
;Onitama.c:1071: if (mx_rojo == -1) return -10000;
	ldhl	sp,	#2
	ld	a, (hl)
	inc	a
	jr	NZ, 00112$
	ld	bc, #0xd8f0
	jp	00154$
00112$:
;Onitama.c:1072: if (mx_azul == -1) return +10000;
	ldhl	sp,	#4
	ld	a, (hl)
	inc	a
	jr	NZ, 00114$
	ld	bc, #0x2710
	jp	00154$
00114$:
;Onitama.c:1073: if (mx_rojo == 2 && my_rojo == 4) return +10000;
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00116$
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00116$
	ld	bc, #0x2710
	jp	00154$
00116$:
;Onitama.c:1074: if (mx_azul == 2 && my_azul == 0) return -10000;
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00119$
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
	jr	NZ, 00119$
	ld	bc, #0xd8f0
	jp	00154$
00119$:
;Onitama.c:1079: uint8_t dist_r = (uint8_t)(4 - my_rojo)
	ld	a, #0x04
	ldhl	sp,	#3
	sub	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
	ldhl	sp,	#2
	ld	e, (hl)
	ld	a,#0x02
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00408$
	bit	7, d
	jr	NZ, 00409$
	cp	a, a
	jr	00409$
00408$:
	bit	7, d
	jr	Z, 00409$
	scf
00409$:
	jr	NC, 00156$
	ldhl	sp,	#2
	ld	e, (hl)
	dec	e
	dec	e
	jr	00157$
00156$:
	ld	a, #0x02
	ldhl	sp,	#2
	sub	a, (hl)
	ld	e, a
00157$:
	ld	a, e
	ldhl	sp,	#15
	add	a, (hl)
;Onitama.c:1081: puntos += (int16_t)(6 - dist_r) * 60;
	ld	c, a
	ld	b, #0x00
	ld	a, #0x06
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	e, (hl)
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;Onitama.c:1086: uint8_t dist_a = (uint8_t)my_azul
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
	ldhl	sp,	#4
	ld	e, (hl)
	ld	a,#0x02
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00410$
	bit	7, d
	jr	NZ, 00411$
	cp	a, a
	jr	00411$
00410$:
	bit	7, d
	jr	Z, 00411$
	scf
00411$:
	jr	NC, 00158$
	ldhl	sp,	#4
	ld	a, (hl)
	dec	a
	dec	a
	jr	00159$
00158$:
	ld	a, #0x02
	ldhl	sp,	#4
	sub	a, (hl)
00159$:
	ldhl	sp,	#17
	add	a, (hl)
;Onitama.c:1088: puntos -= (int16_t)(6 - dist_a) * 45;
	ld	e, a
	ld	d, #0x00
	ld	a, #0x06
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ldhl	sp,	#16
	ld	(hl), c
	inc	hl
	ld	(hl), a
;Onitama.c:1094: if (master_rojo_en_peligro_sim(tablero, cartas_sim)) {
	ldhl	sp,	#11
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_master_rojo_en_peligro_sim
	ldhl	sp,#15
	ld	(hl), a
	or	a, a
	jr	Z, 00190$
;Onitama.c:1095: int8_t ventaja = peones_rojo - peones_azul;
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#18
	sub	a, (hl)
;Onitama.c:1055: puntos += (int16_t)ey * 15;
;Onitama.c:1096: if (ventaja >= 1) {
	ld	(hl), a
	xor	a, #0x80
	sub	a, #0x81
	jr	C, 00122$
;Onitama.c:1097: puntos -= 80;  /* con ventaja clara, el riesgo es tolerable */
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0050
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
	jr	00190$
00122$:
;Onitama.c:1099: puntos -= 200; /* sin ventaja, si hay que protegerse */
	ldhl	sp,#16
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x00c8
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
;Onitama.c:1106: for (by = 0; by < 5; by++) {
00190$:
	ldhl	sp,	#15
	ld	(hl), #0x00
;Onitama.c:1107: for (bx = 0; bx < 5; bx++) {
00188$:
	ldhl	sp,	#15
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	ld	c, #0x00
00150$:
;Onitama.c:1108: if (tablero[by][bx] == 1 || tablero[by][bx] == 2) {
	pop	de
	push	de
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	cp	a, #0x01
	jr	Z, 00187$
	sub	a, #0x02
	jp	NZ,00151$
;Onitama.c:1109: for (bc = 2; bc < 4; bc++) {
00187$:
	ld	b, #0x02
00148$:
;Onitama.c:1110: const Carta* bcarta = cartas_sim[bc];
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	e, l
	ld	d, h
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
;Onitama.c:1111: for (bk = 0; bk < bcarta->cantidad; bk++) {
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#18
	ld	(hl), #0x00
00146$:
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#10
	sub	a, (hl)
	jr	NC, 00149$
;Onitama.c:1112: int8_t bdx = -(bcarta->movimientos[bk].dx);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#9
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#18
	ld	a, (hl)
	ld	d, #0x00
	add	a, a
	rl	d
	ld	e, a
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;Onitama.c:1113: int8_t bdy = -(bcarta->movimientos[bk].dy);
	inc	de
	ld	a, (de)
	ld	e, a
	xor	a, a
	sub	a, e
	ld	e, a
;Onitama.c:1114: int8_t bdx2 = (int8_t)bx + bdx;
	ld	a, c
	add	a, l
	ldhl	sp,	#9
	ld	(hl), a
;Onitama.c:1115: int8_t bdy2 = (int8_t)by + bdy;
	ldhl	sp,	#15
	ld	a, (hl)
	add	a, e
	ldhl	sp,	#10
;Onitama.c:1116: if (bdx2 >= 0 && bdx2 < 5 &&
	ld	(hl-), a
	bit	7, (hl)
	jr	NZ, 00147$
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00147$
;Onitama.c:1117: bdy2 >= 0 && bdy2 < 5) {
	inc	hl
	bit	7, (hl)
	jr	NZ, 00147$
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00147$
;Onitama.c:1118: if (bdx2 == mx_azul && bdy2 == my_azul) {
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#4
	sub	a, (hl)
	jr	NZ, 00147$
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#10
	sub	a, (hl)
	jr	NZ, 00147$
;Onitama.c:1119: puntos += 180;
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	d, (hl)
	dec	hl
	add	a, #0xb4
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	(hl), e
	inc	hl
	ld	(hl), a
00147$:
;Onitama.c:1111: for (bk = 0; bk < bcarta->cantidad; bk++) {
	ldhl	sp,	#18
	inc	(hl)
	jr	00146$
00149$:
;Onitama.c:1109: for (bc = 2; bc < 4; bc++) {
	inc	b
	ld	a, b
	sub	a, #0x04
	jp	C, 00148$
00151$:
;Onitama.c:1107: for (bx = 0; bx < 5; bx++) {
	inc	c
	ld	a, c
	sub	a, #0x05
	jp	C, 00150$
;Onitama.c:1106: for (by = 0; by < 5; by++) {
	ldhl	sp,	#15
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00188$
;Onitama.c:1129: return puntos;
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
00154$:
;Onitama.c:1130: }
	add	sp, #19
	ret
;Onitama.c:1132: void ordenar_movimientos_cpu(void) {
;	---------------------------------
; Function ordenar_movimientos_cpu
; ---------------------------------
_ordenar_movimientos_cpu::
	add	sp, #-9
;Onitama.c:1136: peligro_actual = master_rojo_en_peligro_sim(casillas_tablero, cartas_partida);
	ld	bc, #_cartas_partida
	ld	de, #_casillas_tablero
	call	_master_rojo_en_peligro_sim
	ldhl	sp,	#0
	ld	(hl), a
;Onitama.c:1138: for (ord_i = 0; ord_i < total_movimientos_cpu; ord_i++) {
	ld	hl, #_ord_i
	ld	(hl), #0x00
00123$:
	ld	a, (#_ord_i)
	ld	hl, #_total_movimientos_cpu
	sub	a, (hl)
	jp	NC, 00116$
;Onitama.c:1139: prioridades[ord_i] = 0;
	ld	a, #<(_prioridades)
	ld	hl, #_ord_i
	add	a, (hl)
	ld	c, a
	ld	a, #>(_prioridades)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
;Onitama.c:1141: ord_pieza   = casillas_tablero[movimientos_cpu[ord_i].origen_y]
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_casillas_tablero
	add	hl, de
;Onitama.c:1142: [movimientos_cpu[ord_i].origen_x];
	ld	a, (bc)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	ld	(#_ord_pieza),a
;Onitama.c:1143: ord_destino = casillas_tablero[movimientos_cpu[ord_i].destino_y]
	ld	hl, #0x0003
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_casillas_tablero
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
;Onitama.c:1144: [movimientos_cpu[ord_i].destino_x];
	inc	bc
	inc	bc
	ldhl	sp,	#5
	ld	a, c
	ld	(hl+), a
	ld	a, b
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	(#_ord_destino),a
;Onitama.c:1139: prioridades[ord_i] = 0;
	ld	de, #_prioridades
	ld	hl, #_ord_i
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
;Onitama.c:1147: if (ord_destino == 4) {
	ld	a, (#_ord_destino)
	sub	a, #0x04
	jr	NZ, 00102$
;Onitama.c:1148: prioridades[ord_i] = 100;
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x64
;Onitama.c:1149: continue;
	jr	00115$
00102$:
;Onitama.c:1153: if (ord_pieza == 2 &&
	ld	a, (#_ord_pieza)
	sub	a, #0x02
	ld	a, #0x01
	jr	Z, 00244$
	xor	a, a
00244$:
	ld	c, a
	or	a, a
	jr	Z, 00104$
;Onitama.c:1154: movimientos_cpu[ord_i].destino_x == 2 &&
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	sub	a, #0x02
	jr	NZ, 00104$
;Onitama.c:1155: movimientos_cpu[ord_i].destino_y == 4) {
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	sub	a, #0x04
	jr	NZ, 00104$
;Onitama.c:1156: prioridades[ord_i] = 100;
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x64
;Onitama.c:1157: continue;
	jr	00115$
00104$:
;Onitama.c:1161: if (ord_destino == 3) {
	ld	a, (#_ord_destino)
	sub	a, #0x03
	jr	NZ, 00108$
;Onitama.c:1162: prioridades[ord_i] = 60;
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x3c
;Onitama.c:1163: continue;
	jr	00115$
00108$:
;Onitama.c:1167: if (peligro_actual && ord_pieza == 2) {
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00110$
	ld	a, c
	or	a, a
	jr	Z, 00110$
;Onitama.c:1168: prioridades[ord_i] = 50;
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x32
;Onitama.c:1169: continue;
	jr	00115$
00110$:
;Onitama.c:1173: if (ord_pieza == 2 &&
	ld	a, c
	or	a, a
	jr	Z, 00115$
;Onitama.c:1174: movimientos_cpu[ord_i].destino_y > movimientos_cpu[ord_i].origen_y) {
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	sub	a, c
	jr	NC, 00115$
;Onitama.c:1175: prioridades[ord_i] = 20;
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x14
00115$:
;Onitama.c:1138: for (ord_i = 0; ord_i < total_movimientos_cpu; ord_i++) {
	ld	hl, #_ord_i
	inc	(hl)
	jp	00123$
00116$:
;Onitama.c:1180: for (ord_i = 1; ord_i < total_movimientos_cpu; ord_i++) {
	ld	hl, #_ord_i
	ld	(hl), #0x01
00125$:
	ld	a, (#_ord_i)
	ld	hl, #_total_movimientos_cpu
	sub	a, (hl)
	jp	NC, 00127$
;Onitama.c:1181: ord_temp_mov = movimientos_cpu[ord_i];
	ld	hl, #_ord_i
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	ld	c, l
	ld	de, #0x0005
	push	de
	ld	b, h
	ld	de, #_ord_temp_mov
	call	___memcpy
;Onitama.c:1182: ord_temp_pri = prioridades[ord_i];
	ld	a, #<(_prioridades)
	ld	hl, #_ord_i
	add	a, (hl)
	ld	c, a
	ld	a, #>(_prioridades)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	(#_ord_temp_pri),a
;Onitama.c:1183: ord_j = ord_i;
	ld	a, (#_ord_i)
	ld	(#_ord_j),a
;Onitama.c:1184: while (ord_j > 0 && prioridades[ord_j - 1] < ord_temp_pri) {
00118$:
;Onitama.c:1185: movimientos_cpu[ord_j] = movimientos_cpu[ord_j - 1];
	ld	hl, #_ord_j
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	ld	c, l
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), c
	inc	hl
	ld	(hl), a
;Onitama.c:1184: while (ord_j > 0 && prioridades[ord_j - 1] < ord_temp_pri) {
	ld	hl, #_ord_j
	ld	a, (hl)
	or	a, a
	jr	Z, 00120$
	ld	a, (hl)
	dec	a
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	hl, #_prioridades
	add	hl, bc
	ld	c, (hl)
	ld	hl, #_ord_temp_pri
	ld	e, (hl)
	ld	a,c
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00251$
	bit	7, d
	jr	NZ, 00252$
	cp	a, a
	jr	00252$
00251$:
	bit	7, d
	jr	Z, 00252$
	scf
00252$:
	jr	NC, 00120$
;Onitama.c:1185: movimientos_cpu[ord_j] = movimientos_cpu[ord_j - 1];
	ld	hl, #_ord_j
	ld	c, (hl)
	xor	a, a
	ld	b, a
	dec	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_movimientos_cpu
	add	hl, de
	ld	c, l
	ld	b, h
	ld	de, #0x0005
	push	de
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	___memcpy
;Onitama.c:1186: prioridades[ord_j]     = prioridades[ord_j - 1];
	ld	a, #<(_prioridades)
	ld	hl, #_ord_j
	add	a, (hl)
	ld	c, a
	ld	a, #>(_prioridades)
	adc	a, #0x00
	ld	b, a
	ld	a, (hl)
	dec	a
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	hl, #_prioridades
	add	hl, de
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:1187: ord_j--;
	ld	hl, #_ord_j
	dec	(hl)
	jr	00118$
00120$:
;Onitama.c:1189: movimientos_cpu[ord_j] = ord_temp_mov;
	ld	de, #0x0005
	push	de
	ld	bc, #_ord_temp_mov
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	___memcpy
;Onitama.c:1190: prioridades[ord_j]     = ord_temp_pri;
	ld	a, #<(_prioridades)
	ld	hl, #_ord_j
	add	a, (hl)
	ld	c, a
	ld	a, #>(_prioridades)
	adc	a, #0x00
	ld	b, a
	ld	a, (#_ord_temp_pri)
	ld	(bc), a
;Onitama.c:1180: for (ord_i = 1; ord_i < total_movimientos_cpu; ord_i++) {
	ld	hl, #_ord_i
	inc	(hl)
	jp	00125$
00127$:
;Onitama.c:1192: }
	add	sp, #9
	ret
;Onitama.c:1194: void ejecutar_minimax(void) {
;	---------------------------------
; Function ejecutar_minimax
; ---------------------------------
_ejecutar_minimax::
	add	sp, #-10
;Onitama.c:1197: mejor_valor = -30000;
	ld	hl, #_mejor_valor
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x8a
;Onitama.c:1198: alfa_global = -30000;
	ld	hl, #_alfa_global
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x8a
;Onitama.c:1199: mejor_mov   = movimientos_cpu[0];
	ld	de, #0x0005
	push	de
	ld	bc, #_movimientos_cpu
	ld	de, #_mejor_mov
	call	___memcpy
;Onitama.c:1200: ordenar_movimientos_cpu(); //prioridad de movimientos en orden de importancia.
	call	_ordenar_movimientos_cpu
;Onitama.c:1202: for (mi = 0; mi < total_movimientos_cpu; mi++) {
	ldhl	sp,	#8
	ld	(hl), #0x00
00147$:
	ldhl	sp,	#8
	ld	a, (hl)
	ld	hl, #_total_movimientos_cpu
	sub	a, (hl)
	jp	NC, 00148$
;Onitama.c:1205: copiar_tablero(casillas_tablero, tablero_sim);
	ld	bc, #_tablero_sim
	ld	de, #_casillas_tablero
	call	_copiar_tablero
;Onitama.c:1206: for (nn_sim = 0; nn_sim < 5; nn_sim++) cartas_sim[nn_sim] = cartas_partida[nn_sim];
	ld	hl, #_nn_sim
	ld	(hl), #0x00
00134$:
	ld	a, (#_nn_sim)
	ldhl	sp,	#6
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl-)
	dec	hl
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	sla	(hl)
	inc	hl
	rl	(hl)
	ld	de, #_cartas_sim
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ld	de, #_cartas_partida
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #_nn_sim
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00134$
;Onitama.c:1208: aplicar_movimiento_simulado(tablero_sim, &movimientos_cpu[mi]);
	ldhl	sp,	#8
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_movimientos_cpu
	add	hl,bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #_tablero_sim
	call	_aplicar_movimiento_simulado
;Onitama.c:1210: carta_temp_sim = cartas_sim[4];
	ld	de, #(_cartas_sim + 8)
	ld	a, (de)
	ld	hl, #_carta_temp_sim
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:1211: cartas_sim[4]  = cartas_sim[movimientos_cpu[mi].indice_carta];
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_cartas_sim
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#6
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	de, #(_cartas_sim + 8)
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;Onitama.c:1212: cartas_sim[movimientos_cpu[mi].indice_carta] = carta_temp_sim;
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	a, l
	add	a, #<(_cartas_sim)
	ld	c, a
	ld	a, h
	adc	a, #>(_cartas_sim)
	ld	b, a
	ld	hl, #_carta_temp_sim
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:1214: resultado_sim = comprobar_victoria_sim(tablero_sim);
	ld	de, #_tablero_sim
	call	_comprobar_victoria_sim
;Onitama.c:1215: if (resultado_sim == 2) {
	ld	(#_resultado_sim),a
	sub	a, #0x02
	jr	NZ, 00103$
;Onitama.c:1216: mejor_mov = movimientos_cpu[mi];
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0005
	push	de
	ld	de, #_mejor_mov
	call	___memcpy
;Onitama.c:1217: return;
	jp	00148$
00103$:
;Onitama.c:1221: generar_movimientos_azul(tablero_sim, cartas_sim, lista_azul, &total_azul);
	ld	de, #_total_azul+0
	ld	bc, #_lista_azul
	push	de
	push	bc
	ld	bc, #_cartas_sim
	ld	de, #_tablero_sim
	call	_generar_movimientos_azul
;Onitama.c:1223: if (total_azul == 0) {
	ld	a, (#_total_azul)
	or	a, a
	jr	NZ, 00107$
;Onitama.c:1224: punt_sim = evaluar_estatico(tablero_sim, cartas_sim);
	ld	bc, #_cartas_sim
	ld	de, #_tablero_sim
	call	_evaluar_estatico
	ld	hl, #_punt_sim
	ld	a, c
	ld	(hl+), a
;Onitama.c:1225: if (punt_sim > mejor_valor) {
	ld	a, b
	ld	(hl-), a
	ld	de, #_mejor_valor
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00321$
	bit	7, d
	jr	NZ, 00322$
	cp	a, a
	jr	00322$
00321$:
	bit	7, d
	jr	Z, 00322$
	scf
00322$:
	jp	NC, 00132$
;Onitama.c:1226: mejor_valor = punt_sim;
	ld	hl, #_punt_sim
	ld	a, (hl+)
	ld	c, (hl)
	ld	hl, #_mejor_valor
	ld	(hl+), a
	ld	(hl), c
;Onitama.c:1227: alfa_global = punt_sim;
	ld	hl, #_alfa_global
	ld	(hl+), a
	ld	(hl), c
;Onitama.c:1228: mejor_mov   = movimientos_cpu[mi];
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0005
	push	de
	ld	de, #_mejor_mov
	call	___memcpy
;Onitama.c:1230: continue;
	jp	00132$
00107$:
;Onitama.c:1233: mejor_nivel2_sim = 30000;
	ld	hl, #_mejor_nivel2_sim
	ld	a, #0x30
	ld	(hl+), a
	ld	(hl), #0x75
;Onitama.c:1234: beta_global      = 30000;
	ld	hl, #_beta_global
	ld	a, #0x30
	ld	(hl+), a
	ld	(hl), #0x75
;Onitama.c:1236: for (mj = 0; mj < total_azul; mj++) {
	ldhl	sp,	#9
	ld	(hl), #0x00
00144$:
	ldhl	sp,	#9
	ld	a, (hl)
	ld	hl, #_total_azul
	sub	a, (hl)
	jp	NC, 00129$
;Onitama.c:1238: copiar_tablero(tablero_sim, tablero_sim2);
	ld	bc, #_tablero_sim2
	ld	de, #_tablero_sim
	call	_copiar_tablero
;Onitama.c:1239: for (nn_sim = 0; nn_sim < 5; nn_sim++) cartas_sim2[nn_sim] = cartas_sim[nn_sim];
	ld	hl, #_nn_sim
	ld	(hl), #0x00
00136$:
	ld	a, (#_nn_sim)
	ldhl	sp,	#6
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	sla	(hl)
	inc	hl
	rl	(hl)
	pop	de
	push	de
	ld	hl, #_cartas_sim2
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
	pop	de
	push	de
	ld	hl, #_cartas_sim
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	ld	a, (de)
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	ld	hl, #_nn_sim
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00136$
;Onitama.c:1241: mov_azul_sim = lista_azul[mj];
	ldhl	sp,	#9
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_lista_azul
	add	hl, de
	ld	c, l
	ld	b, h
	ld	de, #0x0005
	push	de
	ld	de, #_mov_azul_sim
	call	___memcpy
;Onitama.c:1242: aplicar_movimiento_simulado(tablero_sim2, &mov_azul_sim);
	ld	bc, #_mov_azul_sim
	ld	de, #_tablero_sim2
	call	_aplicar_movimiento_simulado
;Onitama.c:1244: carta_temp_sim  = cartas_sim2[4];
	ld	de, #(_cartas_sim2 + 8)
	ld	a, (de)
	ld	hl, #_carta_temp_sim
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:1245: cartas_sim2[4]  = cartas_sim2[mov_azul_sim.indice_carta];
	ld	hl, #(_mov_azul_sim + 4)
	ld	l, (hl)
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_cartas_sim2
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #(_cartas_sim2 + 8)
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1246: cartas_sim2[mov_azul_sim.indice_carta] = carta_temp_sim;
	ld	hl, #(_mov_azul_sim + 4)
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	a, l
	add	a, #<(_cartas_sim2)
	ld	c, a
	ld	a, h
	adc	a, #>(_cartas_sim2)
	ld	b, a
	ld	hl, #_carta_temp_sim
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;Onitama.c:1248: resultado_sim = comprobar_victoria_sim(tablero_sim2);
	ld	de, #_tablero_sim2
	call	_comprobar_victoria_sim
;Onitama.c:1249: if (resultado_sim == 1) {
	ld	(#_resultado_sim),a
	dec	a
	jr	NZ, 00110$
;Onitama.c:1250: mejor_nivel2_sim = -10000;
	ld	hl, #_mejor_nivel2_sim
	ld	a, #0xf0
	ld	(hl+), a
	ld	(hl), #0xd8
;Onitama.c:1251: break;
	jp	00129$
00110$:
;Onitama.c:1255: if (profundidad_minimax < 3) {
	ld	a, (#_profundidad_minimax)
	sub	a, #0x03
	jr	NC, 00123$
;Onitama.c:1256: punt_sim = evaluar_estatico(tablero_sim2, cartas_sim2);
	ld	bc, #_cartas_sim2
	ld	de, #_tablero_sim2
	call	_evaluar_estatico
	ld	hl, #_punt_sim
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jp	00124$
00123$:
;Onitama.c:1258: generar_movimientos_rojo(tablero_sim2, cartas_sim2, lista_rojo2, &total_rojo2);
	ld	de, #_total_rojo2
	push	de
	ld	de, #_lista_rojo2
	push	de
	ld	bc, #_cartas_sim2
	ld	de, #_tablero_sim2
	call	_generar_movimientos_rojo
;Onitama.c:1260: if (total_rojo2 == 0) {
	ld	a, (#_total_rojo2)
	or	a, a
	jr	NZ, 00120$
;Onitama.c:1261: punt_sim = evaluar_estatico(tablero_sim2, cartas_sim2);
	ld	bc, #_cartas_sim2
	ld	de, #_tablero_sim2
	call	_evaluar_estatico
	ld	hl, #_punt_sim
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jp	00124$
00120$:
;Onitama.c:1263: mejor_nivel3_sim = -30000;
	ld	hl, #_mejor_nivel3_sim
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x8a
;Onitama.c:1265: for (mk = 0; mk < total_rojo2; mk++) {
	ldhl	sp,	#7
	ld	(hl), #0x00
00141$:
	ldhl	sp,	#7
	ld	a, (hl)
	ld	hl, #_total_rojo2
	sub	a, (hl)
	jp	NC, 00118$
;Onitama.c:1267: copiar_tablero(tablero_sim2, tablero_sim3);
	ld	bc, #_tablero_sim3
	ld	de, #_tablero_sim2
	call	_copiar_tablero
;Onitama.c:1268: for (nn_sim = 0; nn_sim < 5; nn_sim++) cartas_sim3[nn_sim] = cartas_sim2[nn_sim];
	ld	hl, #_nn_sim
	ld	(hl), #0x00
00138$:
	ld	hl, #_nn_sim
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #_cartas_sim3
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
	ld	hl, #_cartas_sim2
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ldhl	sp,	#5
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #_nn_sim
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00138$
;Onitama.c:1270: mov_rojo2_sim = lista_rojo2[mk];
	ldhl	sp,	#7
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_lista_rojo2
	add	hl, de
	ld	c, l
	ld	b, h
	ld	de, #0x0005
	push	de
	ld	de, #_mov_rojo2_sim
	call	___memcpy
;Onitama.c:1271: aplicar_movimiento_simulado(tablero_sim3, &mov_rojo2_sim);
	ld	bc, #_mov_rojo2_sim
	ld	de, #_tablero_sim3
	call	_aplicar_movimiento_simulado
;Onitama.c:1273: carta_temp_sim  = cartas_sim3[4];
	ld	de, #(_cartas_sim3 + 8)
	ld	a, (de)
	ld	hl, #_carta_temp_sim
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;Onitama.c:1274: cartas_sim3[4]  = cartas_sim3[mov_rojo2_sim.indice_carta];
	ld	hl, #(_mov_rojo2_sim + 4)
	ld	l, (hl)
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_cartas_sim3
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #(_cartas_sim3 + 8)
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1275: cartas_sim3[mov_rojo2_sim.indice_carta] = carta_temp_sim;
	ld	a, (#(_mov_rojo2_sim + 4) + 0)
	ld	c, #0x00
	add	a, a
	rl	c
	add	a, #<(_cartas_sim3)
	ld	e, a
	ld	a, c
	adc	a, #>(_cartas_sim3)
	ld	d, a
	ld	hl, #_carta_temp_sim
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;Onitama.c:1277: resultado_sim = comprobar_victoria_sim(tablero_sim3);
	ld	de, #_tablero_sim3
	call	_comprobar_victoria_sim
;Onitama.c:1278: if (resultado_sim == 2) {
	ld	(#_resultado_sim),a
	sub	a, #0x02
	jr	NZ, 00113$
;Onitama.c:1279: mejor_nivel3_sim = 10000;
	ld	hl, #_mejor_nivel3_sim
	ld	a, #0x10
	ld	(hl+), a
	ld	(hl), #0x27
;Onitama.c:1280: break;
	jr	00118$
00113$:
;Onitama.c:1283: punt_sim = evaluar_estatico(tablero_sim3, cartas_sim3);
	ld	bc, #_cartas_sim3
	ld	de, #_tablero_sim3
	call	_evaluar_estatico
	ld	hl, #_punt_sim
	ld	a, c
	ld	(hl+), a
;Onitama.c:1285: if (punt_sim > mejor_nivel3_sim) {
	ld	a, b
	ld	(hl-), a
	ld	de, #_mejor_nivel3_sim
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00329$
	bit	7, d
	jr	NZ, 00330$
	cp	a, a
	jr	00330$
00329$:
	bit	7, d
	jr	Z, 00330$
	scf
00330$:
	jr	NC, 00115$
;Onitama.c:1286: mejor_nivel3_sim = punt_sim;
	ld	a, (#_punt_sim)
	ld	(#_mejor_nivel3_sim),a
	ld	a, (#_punt_sim + 1)
	ld	(#_mejor_nivel3_sim + 1),a
00115$:
;Onitama.c:1290: if (mejor_nivel3_sim >= beta_global) break;
	ld	de, #_mejor_nivel3_sim
	ld	hl, #_beta_global
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00331$
	bit	7, d
	jr	NZ, 00332$
	cp	a, a
	jr	00332$
00331$:
	bit	7, d
	jr	Z, 00332$
	scf
00332$:
	jr	NC, 00118$
;Onitama.c:1265: for (mk = 0; mk < total_rojo2; mk++) {
	ldhl	sp,	#7
	inc	(hl)
	jp	00141$
00118$:
;Onitama.c:1293: punt_sim = mejor_nivel3_sim;
	ld	a, (#_mejor_nivel3_sim)
	ld	(#_punt_sim),a
	ld	a, (#_mejor_nivel3_sim + 1)
	ld	(#_punt_sim + 1),a
00124$:
;Onitama.c:1297: if (punt_sim < mejor_nivel2_sim) {
	ld	de, #_punt_sim
	ld	hl, #_mejor_nivel2_sim
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00333$
	bit	7, d
	jr	NZ, 00334$
	cp	a, a
	jr	00334$
00333$:
	bit	7, d
	jr	Z, 00334$
	scf
00334$:
	jr	NC, 00126$
;Onitama.c:1226: mejor_valor = punt_sim;
	ld	a, (#_punt_sim)
	ldhl	sp,	#6
	ld	(hl), a
	ld	a, (#_punt_sim + 1)
	ldhl	sp,	#7
;Onitama.c:1298: mejor_nivel2_sim = punt_sim;
	ld	(hl-), a
	ld	a, (hl)
	ld	(#_mejor_nivel2_sim),a
	ldhl	sp,	#7
	ld	a, (hl)
	ld	(#_mejor_nivel2_sim + 1),a
;Onitama.c:1299: beta_global      = punt_sim;
	ldhl	sp,	#6
	ld	a, (hl)
	ld	(#_beta_global),a
	ldhl	sp,	#7
	ld	a, (hl)
	ld	(#_beta_global + 1),a
00126$:
;Onitama.c:1303: if (mejor_nivel2_sim <= alfa_global) break;
	ld	de, #_alfa_global
	ld	hl, #_mejor_nivel2_sim
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00335$
	bit	7, d
	jr	NZ, 00336$
	cp	a, a
	jr	00336$
00335$:
	bit	7, d
	jr	Z, 00336$
	scf
00336$:
	jr	NC, 00129$
;Onitama.c:1236: for (mj = 0; mj < total_azul; mj++) {
	ldhl	sp,	#9
	inc	(hl)
	jp	00144$
00129$:
;Onitama.c:1306: if (mejor_nivel2_sim > mejor_valor) {
	ld	de, #_mejor_valor
	ld	hl, #_mejor_nivel2_sim
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00337$
	bit	7, d
	jr	NZ, 00338$
	cp	a, a
	jr	00338$
00337$:
	bit	7, d
	jr	Z, 00338$
	scf
00338$:
	jr	NC, 00132$
;Onitama.c:1307: mejor_valor = mejor_nivel2_sim;
	ld	hl, #_mejor_nivel2_sim
	ld	a, (hl+)
	ld	c, (hl)
	ld	hl, #_mejor_valor
	ld	(hl+), a
	ld	(hl), c
;Onitama.c:1308: alfa_global = mejor_nivel2_sim;
	ld	hl, #_alfa_global
	ld	(hl+), a
	ld	(hl), c
;Onitama.c:1309: mejor_mov   = movimientos_cpu[mi];
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0005
	push	de
	ld	de, #_mejor_mov
	call	___memcpy
00132$:
;Onitama.c:1202: for (mi = 0; mi < total_movimientos_cpu; mi++) {
	ldhl	sp,	#8
	inc	(hl)
	jp	00147$
00148$:
;Onitama.c:1312: }
	add	sp, #10
	ret
;Onitama.c:1313: uint8_t pieza_roja_en_peligro_sim(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py) {
;	---------------------------------
; Function pieza_roja_en_peligro_sim
; ---------------------------------
_pieza_roja_en_peligro_sim::
	add	sp, #-14
	ldhl	sp,	#8
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1317: for (y = 0; y < 5; y++) {
	ldhl	sp,	#10
	ld	(hl), #0x00
;Onitama.c:1318: for (x = 0; x < 5; x++) {
00137$:
	ldhl	sp,	#10
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ldhl	sp,	#11
	ld	(hl), #0x00
00121$:
;Onitama.c:1320: if (tablero[y][x] == 3 || tablero[y][x] == 4) {
	pop	de
	push	de
	ldhl	sp,	#11
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#13
	ld	(hl), a
	sub	a, #0x03
	jr	Z, 00136$
	ldhl	sp,	#13
	ld	a, (hl)
	sub	a, #0x04
	jp	NZ,00122$
;Onitama.c:1322: for (c = 0; c < 2; c++) {
00136$:
	ldhl	sp,	#12
	ld	(hl), #0x00
00119$:
;Onitama.c:1324: const Carta* carta = cartas[c];
	ldhl	sp,	#12
	ld	a, (hl)
	ld	d, #0x00
	add	a, a
	rl	d
	ld	e, a
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
;Onitama.c:1326: for (k = 0; k < carta->cantidad; k++) {
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
	ldhl	sp,	#13
	ld	(hl), #0x00
00117$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ldhl	sp,	#13
	ld	a, (hl)
	sub	a, c
	jr	NC, 00120$
;Onitama.c:1328: int8_t dx = carta->movimientos[k].dx;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,	#13
	ld	e, (hl)
	xor	a, a
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, bc
;Onitama.c:1329: int8_t dy = carta->movimientos[k].dy;
	ld	a, (hl+)
	ld	b, (hl)
;Onitama.c:1331: int8_t destino_x = x + dx;
	ldhl	sp,	#11
	ld	c, (hl)
;Onitama.c:1332: int8_t destino_y = y + dy;
	dec	hl
	add	a, c
	ld	c, a
	ld	a, (hl)
	add	a, b
	ld	b, a
;Onitama.c:1334: if (destino_x >= 0 && destino_x < 5 &&
	bit	7, c
	jr	NZ, 00118$
	ld	a, c
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00118$
;Onitama.c:1335: destino_y >= 0 && destino_y < 5) {
	bit	7, b
	jr	NZ, 00118$
	ld	a, b
	xor	a, #0x80
	sub	a, #0x85
	jr	NC, 00118$
;Onitama.c:1337: if (destino_x == px && destino_y == py) {
	ldhl	sp,	#16
	ld	a, (hl)
	sub	a, c
	jr	NZ, 00118$
	ldhl	sp,	#17
	ld	a, (hl)
	sub	a, b
	jr	NZ, 00118$
;Onitama.c:1338: return 1;
	ld	a, #0x01
	jr	00125$
00118$:
;Onitama.c:1326: for (k = 0; k < carta->cantidad; k++) {
	ldhl	sp,	#13
	inc	(hl)
	jr	00117$
00120$:
;Onitama.c:1322: for (c = 0; c < 2; c++) {
	ldhl	sp,	#12
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x02
	jp	C, 00119$
00122$:
;Onitama.c:1318: for (x = 0; x < 5; x++) {
	ldhl	sp,	#11
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00121$
;Onitama.c:1317: for (y = 0; y < 5; y++) {
	dec	hl
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00137$
;Onitama.c:1347: return 0;
	xor	a, a
00125$:
;Onitama.c:1348: }
	add	sp, #14
	pop	hl
	pop	bc
	jp	(hl)
;Onitama.c:1350: int8_t evaluar_intercambio_basico(uint8_t tablero[5][5], const Carta* cartas[5], int8_t px, int8_t py) {
;	---------------------------------
; Function evaluar_intercambio_basico
; ---------------------------------
_evaluar_intercambio_basico::
	add	sp, #-19
	ldhl	sp,	#13
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#11
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1355: for (y = 0; y < 5; y++) {
	ldhl	sp,	#17
	ld	(hl), #0x00
	ldhl	sp,	#9
	ld	(hl), #0x00
00149$:
;Onitama.c:1356: for (x = 0; x < 5; x++) {
	ldhl	sp,	#18
	ld	(hl), #0x00
	ldhl	sp,	#9
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#17
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#16
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#10
	ld	(hl), #0x00
00147$:
;Onitama.c:1358: if (tablero[y][x] == 3 || tablero[y][x] == 4) {
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#10
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#16
	ld	(hl), a
	sub	a, #0x03
	jr	Z, 00177$
	ldhl	sp,	#16
	ld	a, (hl)
	sub	a, #0x04
	jp	NZ,00148$
;Onitama.c:1360: for (c = 0; c < 2; c++) { // cartas azul
00177$:
	ldhl	sp,	#15
	ld	(hl), #0x00
00145$:
;Onitama.c:1362: const Carta* carta = cartas[c];
	ldhl	sp,	#15
	ld	a, (hl)
	ld	d, #0x00
	add	a, a
	rl	d
	ld	e, a
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl+), a
	inc	de
	ld	a, (de)
;Onitama.c:1364: for (k = 0; k < carta->cantidad; k++) {
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#16
	ld	(hl), #0x00
00143$:
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ldhl	sp,	#16
	ld	a, (hl)
	sub	a, c
	jp	NC, 00146$
;Onitama.c:1366: int8_t dx = carta->movimientos[k].dx;
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,	#16
	ld	e, (hl)
	xor	a, a
	ld	l, e
	ld	h, a
	add	hl, hl
	ld	a, l
	add	a, c
	ld	e, a
	ld	a, h
	adc	a, b
	ld	d, a
	ld	a, (de)
	ld	e, a
;Onitama.c:1367: int8_t dy = carta->movimientos[k].dy;
	add	hl, bc
	inc	hl
	ld	b, (hl)
;Onitama.c:1369: int8_t destino_x = x + dx;
	ldhl	sp,	#10
;Onitama.c:1370: int8_t destino_y = y + dy;
	ld	a, (hl-)
	add	a, e
	ld	c, a
	ld	a, (hl)
	add	a, b
	ld	b, a
;Onitama.c:1372: if (destino_x >= 0 && destino_x < 5 &&
	bit	7, c
	jp	NZ, 00144$
	ld	a, c
	xor	a, #0x80
	sub	a, #0x85
	jp	NC, 00144$
;Onitama.c:1373: destino_y >= 0 && destino_y < 5) {
	bit	7, b
	jp	NZ, 00144$
	ld	a, b
	xor	a, #0x80
	sub	a, #0x85
	jp	NC, 00144$
;Onitama.c:1376: if (destino_x == px && destino_y == py) {
	ldhl	sp,	#21
	ld	a, (hl)
	sub	a, c
	jp	NZ,00144$
	ldhl	sp,	#22
	ld	a, (hl)
	sub	a, b
	jp	NZ,00144$
;Onitama.c:1379: copiar_tablero(tablero, tablero_intercambio);
	ld	bc, #_tablero_intercambio
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_copiar_tablero
;Onitama.c:1381: tablero_intercambio[py][px] = tablero_intercambio[y][x]; // mover pieza azul
	ldhl	sp,	#22
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ld	de, #_tablero_intercambio
	pop	hl
	push	hl
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#21
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#17
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	a, l
	add	a, #<(_tablero_intercambio)
	ld	e, a
	ld	a, h
	adc	a, #>(_tablero_intercambio)
	ld	d, a
	ldhl	sp,	#18
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	(bc), a
;Onitama.c:1382: tablero_intercambio[y][x] = 0;
	xor	a, a
	ld	(de), a
;Onitama.c:1387: for (ry = 0; ry < 5; ry++) {
	ldhl	sp,	#3
	ld	(hl), #0x00
	ldhl	sp,	#15
	ld	(hl), #0x00
00140$:
;Onitama.c:1388: for (rx = 0; rx < 5; rx++) {
	ldhl	sp,	#4
	ld	(hl), #0x00
	ldhl	sp,	#15
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_tablero_intercambio
	add	hl,bc
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
	ldhl	sp,	#16
	ld	(hl), #0x00
00138$:
;Onitama.c:1390: if (tablero_intercambio[ry][rx] == 1 || tablero_intercambio[ry][rx] == 2) {
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#16
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	cp	a, #0x01
	jr	Z, 00171$
	sub	a, #0x02
	jp	NZ,00139$
;Onitama.c:1392: for (rc = 2; rc < 4; rc++) { // cartas rojas
00171$:
	ldhl	sp,	#17
	ld	(hl), #0x02
00136$:
;Onitama.c:1394: const Carta* carta_roja = cartas[rc];
	ldhl	sp,	#17
	ld	a, (hl)
	ld	d, #0x00
	add	a, a
	rl	d
	ld	e, a
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl+), a
	inc	de
	ld	a, (de)
;Onitama.c:1396: for (rk = 0; rk < carta_roja->cantidad; rk++) {
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
	ldhl	sp,	#18
	ld	(hl), #0x00
00134$:
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ldhl	sp,	#18
	ld	a, (hl)
	sub	a, c
	jp	NC, 00137$
;Onitama.c:1398: int8_t rdx = carta_roja->movimientos[rk].dx;
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,	#18
	ld	e, (hl)
	xor	a, a
	ld	l, e
	ld	h, a
	add	hl, hl
	ld	a, l
	add	a, c
	ld	e, a
	ld	a, h
	adc	a, b
	ld	d, a
	ld	a, (de)
	ld	e, a
;Onitama.c:1399: int8_t rdy = carta_roja->movimientos[rk].dy;
	add	hl, bc
	inc	hl
	ld	b, (hl)
;Onitama.c:1401: int8_t rdest_x = rx + rdx;
	ldhl	sp,	#16
;Onitama.c:1402: int8_t rdest_y = ry + rdy;
	ld	a, (hl-)
	add	a, e
	ld	c, a
	ld	a, (hl)
	add	a, b
	ld	b, a
;Onitama.c:1404: if (rdest_x >= 0 && rdest_x < 5 &&
	bit	7, c
	jp	NZ, 00135$
	ld	a, c
	xor	a, #0x80
	sub	a, #0x85
	jp	NC, 00135$
;Onitama.c:1405: rdest_y >= 0 && rdest_y < 5) {
	bit	7, b
	jp	NZ, 00135$
	ld	a, b
	xor	a, #0x80
	sub	a, #0x85
	jp	NC, 00135$
;Onitama.c:1407: if (rdest_x == px && rdest_y == py) {
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, c
	jp	NZ,00135$
	ldhl	sp,	#22
	ld	a, (hl)
	sub	a, b
	jp	NZ,00135$
;Onitama.c:1409: copiar_tablero(tablero_intercambio, tablero_intercambio2);
	ld	bc, #_tablero_intercambio2
	ld	de, #_tablero_intercambio
	call	_copiar_tablero
;Onitama.c:1411: tablero_intercambio2[py][px] = tablero_intercambio2[ry][rx]; // mover rojo
	ld	de, #_tablero_intercambio2
	pop	hl
	push	hl
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#17
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#3
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_tablero_intercambio2
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#4
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#10
	ld	(hl), a
	ldhl	sp,#15
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
;Onitama.c:1412: tablero_intercambio2[ry][rx] = 0;
	ldhl	sp,	#17
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
;Onitama.c:1415: if (pieza_roja_en_peligro_sim(tablero_intercambio2, cartas, px, py)) {
	ldhl	sp,	#22
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#13
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	de, #_tablero_intercambio2
	call	_pieza_roja_en_peligro_sim
	ldhl	sp,#18
	ld	(hl), a
	or	a, a
	jr	Z, 00102$
;Onitama.c:1416: return 2;
	ld	a, #0x02
	jr	00151$
00102$:
;Onitama.c:1419: return 0; // ✔ intercambio limpio
	xor	a, a
	jr	00151$
00135$:
;Onitama.c:1396: for (rk = 0; rk < carta_roja->cantidad; rk++) {
	ldhl	sp,	#18
	inc	(hl)
	jp	00134$
00137$:
;Onitama.c:1392: for (rc = 2; rc < 4; rc++) { // cartas rojas
	ldhl	sp,	#17
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x04
	jp	C, 00136$
00139$:
;Onitama.c:1388: for (rx = 0; rx < 5; rx++) {
	ldhl	sp,	#16
	inc	(hl)
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#16
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00138$
;Onitama.c:1387: for (ry = 0; ry < 5; ry++) {
	dec	hl
	inc	(hl)
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00140$
;Onitama.c:1428: return 1; // ❌ no podemos recapturar → malo
	ld	a, #0x01
	jr	00151$
00144$:
;Onitama.c:1364: for (k = 0; k < carta->cantidad; k++) {
	ldhl	sp,	#16
	inc	(hl)
	jp	00143$
00146$:
;Onitama.c:1360: for (c = 0; c < 2; c++) { // cartas azul
	ldhl	sp,	#15
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x02
	jp	C, 00145$
00148$:
;Onitama.c:1356: for (x = 0; x < 5; x++) {
	ldhl	sp,	#10
	inc	(hl)
	ld	a, (hl)
	ldhl	sp,	#18
	ld	(hl), a
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00147$
;Onitama.c:1355: for (y = 0; y < 5; y++) {
	dec	hl
	inc	(hl)
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
	ldhl	sp,	#9
	ld	a, (hl)
	sub	a, #0x05
	jp	C, 00149$
;Onitama.c:1437: return 0; // nadie captura → OK
	xor	a, a
00151$:
;Onitama.c:1438: }
	add	sp, #19
	pop	hl
	pop	bc
	jp	(hl)
;Onitama.c:1443: void sfx_mover_pieza(void) {
;	---------------------------------
; Function sfx_mover_pieza
; ---------------------------------
_sfx_mover_pieza::
;Onitama.c:1444: NR52_REG = 0x80; /* activar audio */
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;Onitama.c:1445: NR50_REG = 0x77; /* volumen maximo ambos canales */
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;Onitama.c:1446: NR51_REG = 0x11; /* canal 1 a ambos altavoces */
	ld	a, #0x11
	ldh	(_NR51_REG + 0), a
;Onitama.c:1447: NR10_REG = 0x00; /* sin sweep */
	xor	a, a
	ldh	(_NR10_REG + 0), a
;Onitama.c:1448: NR11_REG = 0x80;  /* duty 50%, longitud 0 */
	ld	a, #0x80
	ldh	(_NR11_REG + 0), a
;Onitama.c:1449: NR12_REG = 0xA2; /* volumen medio, decae suave */
	ld	a, #0xa2
	ldh	(_NR12_REG + 0), a
;Onitama.c:1450: NR13_REG = 0x60; /* frecuencia baja (byte bajo) -tono- */
	ld	a, #0x60
	ldh	(_NR13_REG + 0), a
;Onitama.c:1451: NR14_REG = 0xC5; /* tono medio, sonido breve -tono-*/
	ld	a, #0xc5
	ldh	(_NR14_REG + 0), a
;Onitama.c:1452: }
	ret
;Onitama.c:1454: void sfx_mover_pieza_rojo(void) {
;	---------------------------------
; Function sfx_mover_pieza_rojo
; ---------------------------------
_sfx_mover_pieza_rojo::
;Onitama.c:1455: NR10_REG = 0x79;
	ld	a, #0x79
	ldh	(_NR10_REG + 0), a
;Onitama.c:1456: NR50_REG = 0x77; /* volumen maximo ambos canales */
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;Onitama.c:1457: NR51_REG = 0x11; /* canal 1 a ambos altavoces */
	ld	a, #0x11
	ldh	(_NR51_REG + 0), a
;Onitama.c:1458: NR11_REG = 0x8D;
	ld	a, #0x8d
	ldh	(_NR11_REG + 0), a
;Onitama.c:1459: NR12_REG = 0xA2;
	ld	a, #0xa2
	ldh	(_NR12_REG + 0), a
;Onitama.c:1460: NR13_REG = 0xC8;
	ld	a, #0xc8
	ldh	(_NR13_REG + 0), a
;Onitama.c:1461: NR14_REG = 0x80;	
	ld	a, #0x80
	ldh	(_NR14_REG + 0), a
;Onitama.c:1463: }
	ret
;Onitama.c:1465: void sfx_captura(void) {
;	---------------------------------
; Function sfx_captura
; ---------------------------------
_sfx_captura::
;Onitama.c:1466: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;Onitama.c:1467: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;Onitama.c:1468: NR51_REG = 0x11;
	ld	a, #0x11
	ldh	(_NR51_REG + 0), a
;Onitama.c:1469: NR10_REG = 0x00;
	xor	a, a
	ldh	(_NR10_REG + 0), a
;Onitama.c:1470: NR11_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR11_REG + 0), a
;Onitama.c:1471: NR12_REG = 0xF1; /* volumen alto, decae rapido = golpe seco */
	ld	a, #0xf1
	ldh	(_NR12_REG + 0), a
;Onitama.c:1472: NR13_REG = 0x20;
	ld	a, #0x20
	ldh	(_NR13_REG + 0), a
;Onitama.c:1473: NR14_REG = 0xC6;
	ld	a, #0xc6
	ldh	(_NR14_REG + 0), a
;Onitama.c:1474: }
	ret
;Onitama.c:1476: void sfx_victoria(void) {
;	---------------------------------
; Function sfx_victoria
; ---------------------------------
_sfx_victoria::
;Onitama.c:1477: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;Onitama.c:1478: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;Onitama.c:1479: NR51_REG = 0x11;
	ld	a, #0x11
	ldh	(_NR51_REG + 0), a
;Onitama.c:1480: NR10_REG = 0x15; /* sweep ascendente suave */
	ld	a, #0x15
	ldh	(_NR10_REG + 0), a
;Onitama.c:1481: NR11_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR11_REG + 0), a
;Onitama.c:1482: NR12_REG = 0xF3;
	ld	a, #0xf3
	ldh	(_NR12_REG + 0), a
;Onitama.c:1483: NR13_REG = 0x00;
	xor	a, a
	ldh	(_NR13_REG + 0), a
;Onitama.c:1484: NR14_REG = 0xC3;
	ld	a, #0xc3
	ldh	(_NR14_REG + 0), a
;Onitama.c:1485: }
	ret
;Onitama.c:1487: void sfx_derrota(void) {
;	---------------------------------
; Function sfx_derrota
; ---------------------------------
_sfx_derrota::
;Onitama.c:1488: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;Onitama.c:1489: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;Onitama.c:1490: NR51_REG = 0x11;
	ld	a, #0x11
	ldh	(_NR51_REG + 0), a
;Onitama.c:1491: NR10_REG = 0x72; /* sweep descendente = tono cae */
	ld	a, #0x72
	ldh	(_NR10_REG + 0), a
;Onitama.c:1492: NR11_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR11_REG + 0), a
;Onitama.c:1493: NR12_REG = 0xF2;
	ld	a, #0xf2
	ldh	(_NR12_REG + 0), a
;Onitama.c:1494: NR13_REG = 0x00;
	xor	a, a
	ldh	(_NR13_REG + 0), a
;Onitama.c:1495: NR14_REG = 0xC5;
	ld	a, #0xc5
	ldh	(_NR14_REG + 0), a
;Onitama.c:1496: }
	ret
;Onitama.c:1498: void sfx_sable(void) {
;	---------------------------------
; Function sfx_sable
; ---------------------------------
_sfx_sable::
;Onitama.c:1500: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;Onitama.c:1501: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;Onitama.c:1502: NR51_REG = 0x11;
	ld	a, #0x11
	ldh	(_NR51_REG + 0), a
;Onitama.c:1503: NR10_REG = 0x79; /* sweep descendente rapido */
	ld	a, #0x79
	ldh	(_NR10_REG + 0), a
;Onitama.c:1504: NR11_REG = 0x40; /* duty 50% */
	ld	a, #0x40
	ldh	(_NR11_REG + 0), a
;Onitama.c:1505: NR12_REG = 0xF1; /* volumen maximo, decae rapido */
	ld	a, #0xf1
	ldh	(_NR12_REG + 0), a
;Onitama.c:1506: NR13_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR13_REG + 0), a
;Onitama.c:1507: NR14_REG = 0xC7; /* frecuencia alta = filo del sable */
	ld	a, #0xc7
	ldh	(_NR14_REG + 0), a
;Onitama.c:1508: delay_frames(8);
	ld	de, #0x0008
	call	_delay_frames
;Onitama.c:1510: NR10_REG = 0x75;
	ld	a, #0x75
	ldh	(_NR10_REG + 0), a
;Onitama.c:1511: NR12_REG = 0x71;
	ld	a, #0x71
	ldh	(_NR12_REG + 0), a
;Onitama.c:1512: NR13_REG = 0x40;
	ld	a, #0x40
	ldh	(_NR13_REG + 0), a
;Onitama.c:1513: NR14_REG = 0xC6;
	ld	a, #0xc6
	ldh	(_NR14_REG + 0), a
;Onitama.c:1514: delay_frames(6);
	ld	de, #0x0006
;Onitama.c:1515: }
	jp	_delay_frames
;Onitama.c:1528: void menu_2players(void){
;	---------------------------------
; Function menu_2players
; ---------------------------------
_menu_2players::
;Onitama.c:1529: vsync();
	call	_vsync
;Onitama.c:1530: set_bkg_data(seleccion_2players_TILE_ORIGIN, seleccion_2players_TILE_COUNT, seleccion_2players_tiles);
	ld	de, #_seleccion_2players_tiles
	push	de
	ld	hl, #0x20c4
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:1531: set_bkg_tiles(5, 9, 10, 6, seleccion_2players_map);
	ld	de, #_seleccion_2players_map
	push	de
	ld	hl, #0x60a
	push	hl
	ld	hl, #0x905
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:1532: if (_cpu == CGB_TYPE) {	
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00102$
;Onitama.c:1533: set_bkg_attributes(6, 10, 8, 1, atributos_ROJO2);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_ROJO2
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0xa06
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:1534: set_bkg_attributes(6, 11, 8, 1, atributos_AZUL2);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	ld	de, #_atributos_AZUL2
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0xb06
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:1535: set_bkg_attributes(6, 12, 8, 1, atributos_NARANJA);
	ld	bc, #_atributos_NARANJA+0
	ld	e, c
	ld	d, b
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0xc06
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:1536: set_bkg_attributes(6, 13, 8, 1, atributos_NARANJA);
;/opt/gbdk/include/gb/gb.h:1226: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;/opt/gbdk/include/gb/gb.h:1227: set_bkg_tiles(x, y, w, h, tiles);
	push	bc
	ld	hl, #0x108
	push	hl
	ld	hl, #0xd06
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;/opt/gbdk/include/gb/gb.h:1228: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;Onitama.c:1536: set_bkg_attributes(6, 13, 8, 1, atributos_NARANJA);
00102$:
;Onitama.c:1538: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 106);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x6a3c
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x02
;Onitama.c:1540: modo_juego = 3; //por defecto (hotseat).
	ld	hl, #_modo_juego
	ld	(hl), #0x03
;Onitama.c:1541: while (!((joypad() & J_A) || (joypad() & J_B))) //mientras que no se pulse A (avanzar) o B (para ir atrás)
00112$:
	call	_joypad
	bit	4, a
	jr	NZ, 00114$
	call	_joypad
	bit	5, a
	jr	NZ, 00114$
;Onitama.c:1543: if (joypad() & J_DOWN){
	call	_joypad
	bit	3, a
	jr	Z, 00106$
;Onitama.c:1544: switch (modo_juego){
	ld	a, (#_modo_juego)
	sub	a, #0x03
	jr	NZ, 00104$
;Onitama.c:1546: modo_juego=4; //cambia a Game Link
	ld	hl, #_modo_juego
	ld	(hl), #0x04
;Onitama.c:1547: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0,  61, 119);  
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x773d
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x04
;Onitama.c:1550: }
00104$:
;Onitama.c:1551: delay_frames(16);	//	60 frames = 1 segundo. 16 frames ≈ 266 ms)
	ld	de, #0x0010
	call	_delay_frames
00106$:
;Onitama.c:1553: if (joypad() & J_UP){
	call	_joypad
	bit	2, a
	jr	Z, 00110$
;Onitama.c:1554: switch (modo_juego){
	ld	a, (#_modo_juego)
	sub	a, #0x04
	jr	NZ, 00108$
;Onitama.c:1556: modo_juego=3; //cambia a hotseat
	ld	hl, #_modo_juego
	ld	(hl), #0x03
;Onitama.c:1557: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 60, 106);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x6a3c
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x02
;Onitama.c:1560: }
00108$:
;Onitama.c:1561: delay_frames(16);		
	ld	de, #0x0010
	call	_delay_frames
00110$:
;Onitama.c:1563: vsync();
	call	_vsync
	jp	00112$
00114$:
;Onitama.c:1565: if (joypad() & J_A){
	call	_joypad
	bit	4, a
	jr	Z, 00120$
;Onitama.c:1566: if (modo_juego == 4){
	ld	a, (#_modo_juego)
	sub	a, #0x04
	ret	NZ
;Onitama.c:1567: waitpadup();
	call	_waitpadup
;Onitama.c:1568: menu_linkgame();
	jp	_menu_linkgame
00120$:
;Onitama.c:1571: else if (joypad() & J_B){
	call	_joypad
	bit	5, a
	ret	Z
;Onitama.c:1572: waitpadup();
	call	_waitpadup
;Onitama.c:1573: seleccionar_modo();	
;Onitama.c:1575: }
	jp	_seleccionar_modo
;Onitama.c:1577: void menu_linkgame(void){
;	---------------------------------
; Function menu_linkgame
; ---------------------------------
_menu_linkgame::
;Onitama.c:1578: vsync();
	call	_vsync
;Onitama.c:1579: set_bkg_data(seleccion_link_TILE_ORIGIN, seleccion_link_TILE_COUNT, seleccion_link_tiles);
	ld	de, #_seleccion_link_tiles
	push	de
	ld	hl, #0x20c4
	push	hl
	call	_set_bkg_data
	add	sp, #4
;Onitama.c:1580: set_bkg_tiles(5, 9, 10, 6, seleccion_link_map);
	ld	de, #_seleccion_link_map
	push	de
	ld	hl, #0x60a
	push	hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	a, #0x05
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;Onitama.c:1582: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 56, 106);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x6a38
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x02
;Onitama.c:1584: player_is_host = 0;
	ld	hl, #_player_is_host
	ld	(hl), #0x00
;Onitama.c:1585: while (!((joypad() & J_A) || (joypad() & J_B)))
00106$:
	call	_joypad
	bit	4, a
	jr	NZ, 00108$
	call	_joypad
	bit	5, a
	jr	NZ, 00108$
;Onitama.c:1587: if (joypad() & J_DOWN){
	call	_joypad
	bit	3, a
	jr	Z, 00102$
;Onitama.c:1588: player_is_host = 1; //(host = 1, se une a partida, azul)
	ld	hl, #_player_is_host
	ld	(hl), #0x01
;Onitama.c:1589: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0,  61, 119);  
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x773d
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x04
;Onitama.c:1591: delay_frames(16);
	ld	de, #0x0010
	call	_delay_frames
00102$:
;Onitama.c:1594: if (joypad() & J_UP){	
	call	_joypad
	bit	2, a
	jr	Z, 00104$
;Onitama.c:1595: player_is_host = 0; //(host = 0, crea partida, rojo)
	ld	hl, #_player_is_host
	ld	(hl), #0x00
;Onitama.c:1596: move_metasprite_ex(sprite_selector_modo_metasprite0, 1, 0, 0, 56, 106);
;/opt/gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_sprite_selector_modo_metasprite0)
	inc	hl
	ld	(hl), #>(_sprite_selector_modo_metasprite0)
;/opt/gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;/opt/gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;/opt/gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x6a38
	xor	a, a
	call	___move_metasprite
;/opt/gbdk/include/gb/gb.h:1934: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x02
;Onitama.c:1598: delay_frames(16);				
	ld	de, #0x0010
	call	_delay_frames
00104$:
;Onitama.c:1600: vsync();
	call	_vsync
	jr	00106$
00108$:
;Onitama.c:1602: vsync();
	call	_vsync
;Onitama.c:1603: if (joypad() & J_A){
	call	_joypad
	bit	4, a
;Onitama.c:1604: waitpadup();
	jp	NZ,_waitpadup
;Onitama.c:1606: else if (joypad() & J_B){
	call	_joypad
	bit	5, a
	ret	Z
;Onitama.c:1607: waitpadup();
	call	_waitpadup
;Onitama.c:1608: menu_2players();	
;Onitama.c:1611: }
	jp	_menu_2players
;Onitama.c:1617: void link_sync_inicial(void) {
;	---------------------------------
; Function link_sync_inicial
; ---------------------------------
_link_sync_inicial::
	add	sp, #-3
;Onitama.c:1619: if (player_is_host) {
	ld	a, (#_player_is_host)
	or	a, a
	jr	Z, 00125$
;Onitama.c:1620: for (n = 0; n < 5; n++) {
	ld	c, #0x00
00112$:
;Onitama.c:1621: _io_out = indices[n];
	ld	hl, #_indices
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(#__io_out),a
;Onitama.c:1622: send_byte();
	push	bc
	call	_send_byte
	ld	de, #0x0002
	call	_delay_frames
	pop	bc
;Onitama.c:1624: while (_io_status == IO_SENDING);
00101$:
	ld	a, (#__io_status)
	dec	a
	jr	Z, 00101$
;Onitama.c:1625: delay_frames(2);
	push	bc
	ld	de, #0x0002
	call	_delay_frames
	pop	bc
;Onitama.c:1620: for (n = 0; n < 5; n++) {
	inc	c
	ld	a, c
	sub	a, #0x05
	jr	C, 00112$
	jr	00116$
;Onitama.c:1628: for (n = 0; n < 5; n++) {
00125$:
	ldhl	sp,	#2
	ld	(hl), #0x00
00114$:
;Onitama.c:1629: receive_byte();
	call	_receive_byte
;Onitama.c:1630: while (_io_status == IO_RECEIVING);
00105$:
	ld	a, (#__io_status)
	sub	a, #0x02
	jr	Z, 00105$
;Onitama.c:1631: indices[n] = _io_in;
	ld	de, #_indices
	ldhl	sp,	#2
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#__io_in)
	ld	(bc), a
;Onitama.c:1632: cartas_partida[n] = mazo[indices[n]];
	ldhl	sp,	#2
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sla	e
	rl	d
	ld	hl, #_cartas_partida
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_mazo
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1633: delay_frames(2);
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1628: for (n = 0; n < 5; n++) {
	ldhl	sp,	#2
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00114$
00116$:
;Onitama.c:1636: }
	add	sp, #3
	ret
;Onitama.c:1638: void link_enviar_movimiento(uint8_t ox, uint8_t oy, uint8_t dx, uint8_t dy, uint8_t carta) {
;	---------------------------------
; Function link_enviar_movimiento
; ---------------------------------
_link_enviar_movimiento::
	dec	sp
	ld	(#__io_out),a
	ldhl	sp,	#0
	ld	(hl), e
;Onitama.c:1639: _io_out = ox;    send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2); 
	call	_send_byte
	ld	de, #0x0002
	call	_delay_frames
00101$:
	ld	a, (#__io_status)
	dec	a
	jr	Z, 00101$
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1640: _io_out = oy;   send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(#__io_out),a
	call	_send_byte
	ld	de, #0x0002
	call	_delay_frames
00104$:
	ld	a, (#__io_status)
	dec	a
	jr	Z, 00104$
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1641: _io_out = dx;    send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(#__io_out),a
	call	_send_byte
	ld	de, #0x0002
	call	_delay_frames
00107$:
	ld	a, (#__io_status)
	dec	a
	jr	Z, 00107$
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1642: _io_out = dy;    send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(#__io_out),a
	call	_send_byte
	ld	de, #0x0002
	call	_delay_frames
00110$:
	ld	a, (#__io_status)
	dec	a
	jr	Z, 00110$
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1643: _io_out = carta; send_byte(); delay_frames(2); while (_io_status == IO_SENDING); delay_frames(2);
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(#__io_out),a
	call	_send_byte
	ld	de, #0x0002
	call	_delay_frames
00113$:
	ld	a, (#__io_status)
	dec	a
	jr	Z, 00113$
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1644: }
	inc	sp
	pop	hl
	add	sp, #3
	jp	(hl)
;Onitama.c:1646: void link_recibir_movimiento(void) {
;	---------------------------------
; Function link_recibir_movimiento
; ---------------------------------
_link_recibir_movimiento::
	dec	sp
	dec	sp
;Onitama.c:1647: receive_byte(); delay_frames(2); while (_io_status == IO_RECEIVING); link_ox = _io_in; delay_frames(2); 
	call	_receive_byte
	ld	de, #0x0002
	call	_delay_frames
00101$:
	ld	a, (#__io_status)
	sub	a, #0x02
	jr	Z, 00101$
	ld	a, (#__io_in)
	ld	(#_link_ox),a
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1648: receive_byte(); delay_frames(2);  while (_io_status == IO_RECEIVING); link_oy = _io_in; delay_frames(2); 
	call	_receive_byte
	ld	de, #0x0002
	call	_delay_frames
00104$:
	ld	a, (#__io_status)
	sub	a, #0x02
	jr	Z, 00104$
	ld	a, (#__io_in)
	ld	(#_link_oy),a
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1649: receive_byte(); delay_frames(2);  while (_io_status == IO_RECEIVING); link_dx = _io_in; delay_frames(2); 
	call	_receive_byte
	ld	de, #0x0002
	call	_delay_frames
00107$:
	ld	a, (#__io_status)
	sub	a, #0x02
	jr	Z, 00107$
	ld	a, (#__io_in)
	ld	(#_link_dx),a
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1650: receive_byte(); delay_frames(2); while (_io_status == IO_RECEIVING); link_dy = _io_in; delay_frames(2); 
	call	_receive_byte
	ld	de, #0x0002
	call	_delay_frames
00110$:
	ld	a, (#__io_status)
	sub	a, #0x02
	jr	Z, 00110$
	ld	a, (#__io_in)
	ld	(#_link_dy),a
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1651: receive_byte(); delay_frames(2); while (_io_status == IO_RECEIVING); link_carta = _io_in; delay_frames(2); 
	call	_receive_byte
	ld	de, #0x0002
	call	_delay_frames
00113$:
	ld	a, (#__io_status)
	sub	a, #0x02
	jr	Z, 00113$
	ld	a, (#__io_in)
	ld	(#_link_carta),a
	ld	de, #0x0002
	call	_delay_frames
;Onitama.c:1655: casillas_tablero[link_dy][link_dx] = casillas_tablero[link_oy][link_ox];
	ld	hl, #_link_dy
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_link_dx
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ld	hl, #_link_oy
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_link_ox
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, (hl)
	pop	hl
	push	hl
	ld	(hl), c
;Onitama.c:1656: casillas_tablero[link_oy][link_ox] = 0;
	ld	hl, #_link_oy
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_casillas_tablero
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #_link_ox
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	(hl), #0x00
;Onitama.c:1657: temp = cartas_partida[4];
	ld	hl, #(_cartas_partida + 8)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;Onitama.c:1658: cartas_partida[4] = cartas_partida[link_carta];
	ld	hl, #_link_carta
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_cartas_partida
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	de, #(_cartas_partida + 8)
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;Onitama.c:1659: cartas_partida[link_carta] = temp;
	ld	hl, #_link_carta
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_cartas_partida
	add	hl, de
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;Onitama.c:1660: posicion_ejercitos_visual();
	call	_posicion_ejercitos_visual
;Onitama.c:1661: actualizar_cartas_visual();
	call	_actualizar_cartas_visual
;Onitama.c:1662: comprobar_victoria();
	call	_comprobar_victoria
;Onitama.c:1663: if (jugador_activo == 0) jugador_activo = 1;
	ld	hl, #_jugador_activo
	ld	a, (hl)
	or	a, a
	jr	NZ, 00119$
	ld	(hl), #0x01
	jr	00121$
00119$:
;Onitama.c:1664: else if (jugador_activo == 1) jugador_activo = 0;
	ld	a, (#_jugador_activo)
	dec	a
	jr	NZ, 00121$
	ld	hl, #_jugador_activo
	ld	(hl), #0x00
00121$:
;Onitama.c:1665: }
	inc	sp
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__game_state:
	.db #0x00	; 0
__xinit__hay_ganador:
	.db #0x00	; 0
__xinit__estado_anterior_A:
	.db #0x00	; 0
__xinit__hay_master_rojo:
	.db #0x00	; 0
__xinit__hay_master_azul:
	.db #0x00	; 0
__xinit__selector_fijo_activo:
	.db #0x00	; 0
__xinit__selecciona_derecha:
	.db #0x00	; 0
__xinit__casillas_tablero:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
__xinit__indices:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
__xinit__total_movimientos_cpu:
	.db #0x00	; 0
__xinit__mazo:
	.dw _TIGER
	.dw _DRAGON
	.dw _ELEPHANT
	.dw _MONKEY
	.dw _CRAB
	.dw _BOAR
	.dw _MANTIS
	.dw _CRANE
	.dw _FROG
	.dw _GOOSE
	.dw _HORSE
	.dw _EEL
	.dw _RABBIT
	.dw _ROOSTER
	.dw _OX
	.dw _COBRA
__xinit__jugador_activo:
	.db #0x00	; 0
__xinit__pieza_seleccionada:
	.db #0x00	; 0
__xinit__cpu_ha_jugado:
	.db #0x00	; 0
__xinit__total_seguros:
	.db #0x00	; 0
__xinit__valor:
	.dw #0x0000
__xinit__player_is_host:
	.db #0x00	; 0
__xinit__es_mi_turno:
	.db #0x00	; 0
	.area _CABS (ABS)
