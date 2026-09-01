#!/bin/bash
name="Outside"
greet() {
	local name="Inside"
	echo "$name"
}
greet
echo "$name"
