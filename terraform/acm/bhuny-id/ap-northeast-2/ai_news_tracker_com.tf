module "ai_news_tracker_com" {
  source = "../_modules/acm"

  domain_name = "*.ai-news-tracker.com"
  zone_id     = var.r53_variables.ai_news_tracker_com_zone_id
  
  subject_alternative_names          = ["ai-news-tracker.com"]
  validation_allow_overwrite_records = true
  wait_for_validation                = true
}
