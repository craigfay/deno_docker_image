FROM debian

RUN apt update

RUN apt install curl -y

RUN apt install unzip -y

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

ENV DENO_INSTALL "/root/.deno"

ENV PATH "$DENO_INSTALL/bin:$PATH"

CMD deno run https://deno.land/std/examples/welcome.ts

