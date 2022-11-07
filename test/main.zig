const Enuma = @import("enuma").App;

fn main() {
    Engine engine = Enuma.create_engine(100, 100, 640, 480, "enuma");

    engine.start_engine();
}
