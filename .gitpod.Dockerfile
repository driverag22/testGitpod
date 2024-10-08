FROM gitpod/workspace-full:latest

USER gitpod

RUN sudo apt update; \
    sudo apt install software-properties-common -y; \
    sudo add-apt-repository ppa:avsm/ppa; \
    sudo apt update; \
    sudo echo Now we are going to install opam; \
    sudo apt install opam -y;

RUN opam init --disable-sandboxing --bare -y; \
    eval $(opam env); \
    opam switch list-available; \
    opam switch create waterproof 4.14.1+options; \
    eval $(opam env --switch=waterproof);

RUN echo "Going to install coq-lsp";\
    opam install coq-lsp.0.1.8+8.17 -y ; \
    opam pin add https://github.com/impermeable/coq-waterproof.git#2.1.0+8.17 -y ;

RUN eval $(opam env);

RUN echo "eval \$(opam env)" >> /home/gitpod/.bashrc ;
