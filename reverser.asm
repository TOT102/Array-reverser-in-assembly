.386
.model flat,c

.code

reverser	PROC
			; prolouge
			push ebp
			mov ebp,esp
			push esi
			push edi

			xor eax,eax
			mov edi,[ebp+8]	; Зарежда параметрите от функцията в следните регистри, използвайки base pointer
			mov esi,[ebp+12] ; s_arr
			mov ecx,[ebp+16] ; num_of_elements
			test	ecx,ecx

			lea esi,[esi+ecx*4-4]
			pushfd
			std

@@:			lodsd
			mov [edi],eax
			add edi,4
			dec ecx
			jnz @B

			popfd
			mov eax,1

			; epilouge
			pop edi ; освобождава регистрите
			pop esi
			pop ebp

			ret

reverser	endp
			end