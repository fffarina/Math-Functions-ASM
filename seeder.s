	.global _seeder

	.text

_seeder:

	rdseed %eax
	jnc _seeder
	ret

