components {
  id: "player"
  component: "/assets/game_objects/player.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"man_run\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/atlases/characters.atlas\"\n"
  "}\n"
  ""
}
