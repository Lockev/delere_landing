resource "aws_route53_record" "app" {
  name    = ""
  type    = "A"
  zone_id = var.domain_zone_id
  alias {
    evaluate_target_health = false
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
  }
}

resource "aws_route53_record" "app_cert" {
  name            = tolist(aws_acm_certificate.app.domain_validation_options)[0].resource_record_name
  type            = tolist(aws_acm_certificate.app.domain_validation_options)[0].resource_record_type
  zone_id         = var.domain_zone_id
  records         = [tolist(aws_acm_certificate.app.domain_validation_options)[0].resource_record_value]
  ttl             = 60
  allow_overwrite = true
}
