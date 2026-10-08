#define ring_padding 0.0
#define ring_width max((1.0 - umbriel_border_hole.w) * umbriel_size.y * 0.5 - ring_padding, 1.0)

float ring_distance(vec2 coords) {
    return umbriel_border_distance(
        coords / umbriel_size + umbriel_border_hole.xy
    );
}

vec3 mix_color() {
    vec3 dark = vec3(
        0.1176,
        0.1176,
        0.1804
    );
    vec3 blue = vec3(
        0.5373,
        0.7059,
        0.9804
    );
    float t = 0.5 + 0.5 * sin(umbriel_time * 0.95);
    return mix(dark, blue, t);
}

vec4 ring_color(vec2 coords) {
    float d = ring_distance(coords);
    float half_px = 0.5 / umbriel_scale;
    float coverage =
        smoothstep(-half_px, half_px, d) *
        (1.0 - smoothstep(
            ring_width - half_px,
            ring_width + half_px,
            d
        ));
    return vec4(mix_color(), coverage);
}

vec4 border(vec2 uv) {
    vec4 c = ring_color(
        (uv - umbriel_border_hole.xy) * umbriel_size
    );
    return vec4(c.rgb * c.a, c.a);
}