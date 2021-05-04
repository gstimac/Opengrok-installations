opengrok:
  pkg.latest:
    - pkgs:
      - openjdk-11-jdk-headless 
      - universal-ctags 
      - git 
      - python3-pip

hierarchy:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - names: 
      - /opengrok/src
      - /opengrok/data
      - /opengrok/dist
      - /opengrok/etc
      - /opengrok/log

download_opengrok:
  file.managed:
    - name: /tmp/opengrok-1.7.2.tar.gz
    - source: https://github.com/oracle/opengrok/releases/download/1.7.2/opengrok-1.7.2.tar.gz
    - user: root
    - group: root
    - mode: 755
    - skip_verify: True
