project_name: "ea_ef"

application: explore_assistant {
  label: "Explore Assistant"
  url: "https://localhost:8080/explore_assistant.js"
  # file: "bundle.js"
  # file: "explore_assistant.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","run_inline_query","run_query","create_query","update_user_attribute","create_user_attribute","all_user_attributes","me"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    }
}
