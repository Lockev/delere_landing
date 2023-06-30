resource "aws_acm_certificate" "app" {
  provider          = aws.us
  domain_name       = var.bucket_name
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate_validation" "app" {
  provider                = aws.us
  certificate_arn         = aws_acm_certificate.app.arn
  validation_record_fqdns = [aws_route53_record.app_cert.fqdn]
}
