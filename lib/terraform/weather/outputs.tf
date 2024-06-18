output "weather" {
  value = data.http.weather.body
}

output "url" {
  value = local.url
}

output "location" {
  value       = var.location
  description = "Location of the weather report."
}

output "lang" {
  value       = var.lang
  description = "Language which the weather is displayed."
}

output "units" {
  value       = var.units
  description = "Units the weather is displayed."
}
