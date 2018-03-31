# mkdir -p dist && docker build -t godot-hello . && docker run --mount type=bind,source=(pwd)/dist,target=/app/dist godot-hello
FROM mattiascibien/godot-docker:3.0.2
RUN mkdir -p "/root/.cache/godot" "/root/.config/godot"

ENV dir="/app"
RUN mkdir $dir
COPY . $dir
WORKDIR $dir

RUN ls
ENV GODOT_HEADLESS=/bin/godot
CMD ./bin/build.sh
