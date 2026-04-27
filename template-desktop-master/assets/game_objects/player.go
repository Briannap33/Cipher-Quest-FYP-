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
  position {
    z: -2.0
  }
}
embedded_components {
  id: "interaction"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"player\"\n"
  "mask: \"NPC\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "    id: \"interaction\"\n"
  "  }\n"
  "  data: 15.0\n"
  "  data: 15.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
