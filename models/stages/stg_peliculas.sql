{%- set yaml_metadata -%}

source_model:
  'peliculas_api': 'movies'
ldts: 'SYSDATE()'
rsrc: 'movies'
hashed_columns:
  hk_pelicula_h:
    - original_title
  hk_director_h:
    - director
  hk_valoraciones_h:
    - original_title
  hk_genero_h:
    - genres
  hk_productora_h:
    - production_companies
  hk_pais_productor_h:
    - production_countries

  hk_productora_pelicula_l:
    - original_title
    - production_companies
  hk_pais_productor_pelicula_l:
    - original_title
    - production_countries
  hk_valoraciones_pelicula_l:
    - original_title
  hk_genero_pelicula_l:
    - original_title
    - genres
  hk_director_pelicula_l:
    - original_title
    - director

  hd_pelicula_descripcion_s:
    is_hashdiff: true
    columns:
      - original_title
      - overview
      - tagline
      - keywords
  hd_pelicula_informacion_s:
    is_hashdiff: true
    columns:
      - runtime
      - release_date
      - original_language
  hd_pelicula_valoraciones_s:
    is_hashdiff: true
    columns:
      - vote_average
      - vote_count
      - popularity

{%- endset -%}

{{ datavault4dbt.stage(yaml_metadata=yaml_metadata) }}
