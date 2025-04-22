#!/usr/bin/env bash

parse_json() {
		jq -c '
				.[] | 
				{
						id,
						tag_name, 
						temperature,
						temperature_min,
						temperature_max,
						temperature_trend,
						humidity,
						humidity_trend,
						datetime, 
						battery_low
				}
		'
}