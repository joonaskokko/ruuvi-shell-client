#!/usr/bin/env bash

parse_json() {
		jq -c '
				.[] | 
				{
						id,
						tag_name, 
						temperature: .temperature.current,
						temperature_min: .temperature.min,
						temperature_max: .temperature.max,
						temperature_trend: .temperature.trend,
						humidity: .humidity.current,
						humidity_trend: .humidity.trend,
						datetime, 
						battery_low
				}
		'
}