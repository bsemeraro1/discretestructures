From: <Saved by Blink>
Snapshot-Content-Location: https://leanprover.github.io/live/latest/#code=namespace%20homework5%0A%0Aopen%20nat%0A%0A--%201%0Atheorem%20mul_add%20(m%20n%20k%20:%20nat)%20:%20m%20*%20(n%20+%20k)%20=%20(m%20*%20n)%20+%20(m%20*%20k)%20:=%0Anat.rec_on%20k%0A%20%20%20%20(show%20m%20*%20(n%20+%200)%20=%20(m%20*%20n)%20+%20(m%20*%200),%20from%20calc%0A%20%20%20%20%20%20%20%20m%20*%20(n%20+%200)%20=%20m%20*%20n%20%20%20%20%20%20%20%20%20%20%20%20%20:%20by%20rw%20add_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%200%20%20%20%20%20%20%20:%20by%20rw%20add_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20(m%20*%200)%20:%20by%20rw%20mul_zero)%0A%20%20%20%20(assume%20k,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%20m%20*%20(n%20+%20k)%20=%20(m%20*%20n)%20+%20(m%20*%20k),%0A%20%20%20%20%20%20%20%20show%20m%20*%20(n%20+%20succ%20k)%20=%20(m%20*%20n)%20+%20(m%20*%20succ%20k),%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%20m%20*%20(n%20+%20succ%20k)%20=%20m%20*%20(succ%20(n%20+%20k))%20%20%20%20%20%20%20:%20rfl%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20+%20k)%20+%20m%20%20%20%20%20%20%20%20%20%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20(m%20*%20k)%20+%20m%20%20%20%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20((m%20*%20k)%20+%20m)%20%20:%20by%20rw%20add_assoc%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20(m%20*%20succ%20k)%20:%20by%20rw%20mul_succ)%0A%0A%0A--%202%0Atheorem%20zero_mul%20(n%20:%20nat)%20:%200%20*%20n%20=%200%20:=%0Anat.rec_on%20n%0A%20%20%20%20(show%200%20*%200%20=%200,%20from%20mul_zero%200)%0A%20%20%20%20(assume%20n,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%200%20*%20n%20=%200,%0A%20%20%20%20%20%20%20%20show%200%20*%20succ%20n%20=%200,%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%200%20*%20succ%20n%20=%200%20*%20n%20+%200%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%200%20+%200%20%20%20%20%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%200%20%20%20%20%20%20%20%20%20:%20by%20rw%20add_zero)%0A%0A%0A%0A--%203%0Atheorem%20one_mul%20(n%20:%20nat)%20:%201%20*%20n%20=%20n%20:=%0Anat.rec_on%20n%0A%20%20%20%20(show%201%20*%200%20=%200,%20from%20mul_zero%201)%0A%20%20%20%20(assume%20n,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%201%20*%20n%20=%20n,%0A%20%20%20%20%20%20%20%20show%201%20*%20succ%20n%20=%20succ%20n,%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%201%20*%20succ%20n%20=%201%20*%20n%20+%201%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20n%20+%201%20%20%20%20%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20succ%20n%20%20%20%20:%20rfl)%0A%0A--%204%0Atheorem%20mul_assoc%20(m%20n%20k%20:%20nat)%20:%20(m%20*%20n)%20*%20k%20=%20m%20*%20(n%20*%20k)%20:=%0Anat.rec_on%20k%0A%20%20%20%20(show%20(m%20*%20n)%20*%200%20=%20m%20*%20(n%20*%200),%20from%20calc%0A%20%20%20%20%20%20%20%20(m%20*%20n)%20*%200%20=%200%20%20%20%20%20%20%20%20%20%20%20:%20by%20rw%20mul_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%200%20%20%20%20%20%20%20:%20by%20rw%20mul_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%200)%20:%20by%20rw%20mul_zero%20n)%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20(assume%20k,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%20(m%20*%20n)%20*%20k%20=%20m%20*%20(n%20*%20k),%0A%20%20%20%20%20%20%20%20show%20(m%20*%20n)%20*%20succ%20k%20=%20m%20*%20(n%20*%20succ%20k),%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%20(m%20*%20n)%20*%20succ%20k%20=%20(m%20*%20n)%20*%20k%20+%20(m%20*%20n)%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%20k)%20+%20(m%20*%20n)%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%20k%20+%20n)%20%20%20%20%20%20%20:%20by%20rw%20mul_add%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%20succ%20k)%20%20%20%20:%20by%20rw%20mul_succ)%0A%0A--%205%0Atheorem%20mul_comm%20(m%20n%20:%20nat)%20:%20m%20*%20n%20=%20n%20*%20m%20:=%0Anat.rec_on%20n%0A%20%20%20%20(show%20m%20*%200%20=%200%20*%20m,%20from%20calc%0A%20%20%20%20%20%20%20%20m%20*%200%20=%200%20%20%20%20%20:%20by%20rw%20mul_zero%0A%20%20%20%20%20%20%20%20%20%20...%20=%200%20*%20m%20:%20by%20rw%20zero_mul)%0A%20%20%20%20(assume%20n,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%20m%20*%20n%20=%20n%20*%20m,%0A%20%20%20%20%20%20%20%20show%20m%20*%20succ%20n%20=%20succ%20n%20*%20m,%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%20m%20*%20succ%20n%20=%20m%20*%20n%20+%20m%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20n%20*%20m%20+%20m%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20succ%20n%20*%20m%20:%20by%20rw%20succ_mul)%0Aend%20homework5%0A
Subject: Lean Web Editor
Date: Fri, 29 Apr 2022 01:47:25 -0000
MIME-Version: 1.0
Content-Type: multipart/related;
	type="text/html";
	boundary="----MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----"


------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: text/html
Content-ID: <frame-2152CA18A33E0C650B42B38A8994F4C8@mhtml.blink>
Content-Transfer-Encoding: quoted-printable
Content-Location: https://leanprover.github.io/live/latest/#code=namespace%20homework5%0A%0Aopen%20nat%0A%0A--%201%0Atheorem%20mul_add%20(m%20n%20k%20:%20nat)%20:%20m%20*%20(n%20+%20k)%20=%20(m%20*%20n)%20+%20(m%20*%20k)%20:=%0Anat.rec_on%20k%0A%20%20%20%20(show%20m%20*%20(n%20+%200)%20=%20(m%20*%20n)%20+%20(m%20*%200),%20from%20calc%0A%20%20%20%20%20%20%20%20m%20*%20(n%20+%200)%20=%20m%20*%20n%20%20%20%20%20%20%20%20%20%20%20%20%20:%20by%20rw%20add_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%200%20%20%20%20%20%20%20:%20by%20rw%20add_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20(m%20*%200)%20:%20by%20rw%20mul_zero)%0A%20%20%20%20(assume%20k,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%20m%20*%20(n%20+%20k)%20=%20(m%20*%20n)%20+%20(m%20*%20k),%0A%20%20%20%20%20%20%20%20show%20m%20*%20(n%20+%20succ%20k)%20=%20(m%20*%20n)%20+%20(m%20*%20succ%20k),%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%20m%20*%20(n%20+%20succ%20k)%20=%20m%20*%20(succ%20(n%20+%20k))%20%20%20%20%20%20%20:%20rfl%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20+%20k)%20+%20m%20%20%20%20%20%20%20%20%20%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20(m%20*%20k)%20+%20m%20%20%20%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20((m%20*%20k)%20+%20m)%20%20:%20by%20rw%20add_assoc%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20(m%20*%20n)%20+%20(m%20*%20succ%20k)%20:%20by%20rw%20mul_succ)%0A%0A%0A--%202%0Atheorem%20zero_mul%20(n%20:%20nat)%20:%200%20*%20n%20=%200%20:=%0Anat.rec_on%20n%0A%20%20%20%20(show%200%20*%200%20=%200,%20from%20mul_zero%200)%0A%20%20%20%20(assume%20n,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%200%20*%20n%20=%200,%0A%20%20%20%20%20%20%20%20show%200%20*%20succ%20n%20=%200,%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%200%20*%20succ%20n%20=%200%20*%20n%20+%200%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%200%20+%200%20%20%20%20%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%200%20%20%20%20%20%20%20%20%20:%20by%20rw%20add_zero)%0A%0A%0A%0A--%203%0Atheorem%20one_mul%20(n%20:%20nat)%20:%201%20*%20n%20=%20n%20:=%0Anat.rec_on%20n%0A%20%20%20%20(show%201%20*%200%20=%200,%20from%20mul_zero%201)%0A%20%20%20%20(assume%20n,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%201%20*%20n%20=%20n,%0A%20%20%20%20%20%20%20%20show%201%20*%20succ%20n%20=%20succ%20n,%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%201%20*%20succ%20n%20=%201%20*%20n%20+%201%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20n%20+%201%20%20%20%20%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20succ%20n%20%20%20%20:%20rfl)%0A%0A--%204%0Atheorem%20mul_assoc%20(m%20n%20k%20:%20nat)%20:%20(m%20*%20n)%20*%20k%20=%20m%20*%20(n%20*%20k)%20:=%0Anat.rec_on%20k%0A%20%20%20%20(show%20(m%20*%20n)%20*%200%20=%20m%20*%20(n%20*%200),%20from%20calc%0A%20%20%20%20%20%20%20%20(m%20*%20n)%20*%200%20=%200%20%20%20%20%20%20%20%20%20%20%20:%20by%20rw%20mul_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%200%20%20%20%20%20%20%20:%20by%20rw%20mul_zero%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%200)%20:%20by%20rw%20mul_zero%20n)%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20(assume%20k,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%20(m%20*%20n)%20*%20k%20=%20m%20*%20(n%20*%20k),%0A%20%20%20%20%20%20%20%20show%20(m%20*%20n)%20*%20succ%20k%20=%20m%20*%20(n%20*%20succ%20k),%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%20(m%20*%20n)%20*%20succ%20k%20=%20(m%20*%20n)%20*%20k%20+%20(m%20*%20n)%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%20k)%20+%20(m%20*%20n)%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%20k%20+%20n)%20%20%20%20%20%20%20:%20by%20rw%20mul_add%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20m%20*%20(n%20*%20succ%20k)%20%20%20%20:%20by%20rw%20mul_succ)%0A%0A--%205%0Atheorem%20mul_comm%20(m%20n%20:%20nat)%20:%20m%20*%20n%20=%20n%20*%20m%20:=%0Anat.rec_on%20n%0A%20%20%20%20(show%20m%20*%200%20=%200%20*%20m,%20from%20calc%0A%20%20%20%20%20%20%20%20m%20*%200%20=%200%20%20%20%20%20:%20by%20rw%20mul_zero%0A%20%20%20%20%20%20%20%20%20%20...%20=%200%20*%20m%20:%20by%20rw%20zero_mul)%0A%20%20%20%20(assume%20n,%0A%20%20%20%20%20%20%20%20assume%20ih%20:%20m%20*%20n%20=%20n%20*%20m,%0A%20%20%20%20%20%20%20%20show%20m%20*%20succ%20n%20=%20succ%20n%20*%20m,%20from%20calc%0A%20%20%20%20%20%20%20%20%20%20%20%20m%20*%20succ%20n%20=%20m%20*%20n%20+%20m%20:%20by%20rw%20mul_succ%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20n%20*%20m%20+%20m%20:%20by%20rw%20ih%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20...%20=%20succ%20n%20*%20m%20:%20by%20rw%20succ_mul)%0Aend%20homework5%0A

<!DOCTYPE html><html lang=3D"en"><head><meta http-equiv=3D"Content-Type" co=
ntent=3D"text/html; charset=3DUTF-8"><link rel=3D"stylesheet" type=3D"text/=
css" href=3D"cid:css-ceb136f7-dd7a-4499-8b32-d203cd99299c@mhtml.blink" /><l=
ink rel=3D"stylesheet" type=3D"text/css" href=3D"cid:css-37fcfc34-18d7-46c7=
-8d3c-4876b6696d74@mhtml.blink" /><link rel=3D"stylesheet" type=3D"text/css=
" href=3D"cid:css-b74170d1-7079-4876-b811-ba3ae299f880@mhtml.blink" /><link=
 rel=3D"stylesheet" type=3D"text/css" href=3D"cid:css-808e8adb-0df9-4cba-90=
4b-c951791ee105@mhtml.blink" />
   =20
    <meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=
=3D1">
    <link rel=3D"stylesheet" type=3D"text/css" data-name=3D"vs/editor/edito=
r.main" href=3D"https://leanprover.github.io/live/latest/vs/editor/editor.m=
ain.css"><link rel=3D"stylesheet" href=3D"https://leanprover.github.io/live=
/latest/index.css">
    <title>Lean Web Editor</title>
  </head>
  <body>
    <div id=3D"root"><div><div style=3D"height: 5em; overflow: hidden;"><di=
v style=3D"height: 100%;"><img src=3D"https://leanprover.github.io/live/lat=
est/lean_logo.svg" style=3D"height: 100%; float: left; padding-left: 1em; p=
adding-right: 3em;"><div style=3D"padding: 1em;"><div style=3D"font-size: 8=
0%;">Live in-browser version of the <a href=3D"https://leanprover.github.io=
/">Lean theorem prover</a>.</div></div></div></div><div style=3D"height: ca=
lc(99vh - 5em); width: 100%; position: relative;"><div class=3D"SplitPane  =
vertical " style=3D"display: flex; flex: 1 1 0%; height: 100%; position: ab=
solute; outline: none; overflow: hidden; user-select: text; flex-direction:=
 row; left: 0px; right: 0px;"><div class=3D"Pane vertical Pane1  " style=3D=
"flex: 0 0 auto; position: relative; outline: none; width: 811px;"><div dat=
a-keybinding-context=3D"1" data-mode-id=3D"lean" style=3D"height: 100%; wid=
th: 100%; margin: 1ex 2em 1ex 1ex; overflow: hidden;"><div class=3D"monaco-=
editor vs focused" style=3D"width: 811px; height: 570px;"><div data-mprt=3D=
"3" class=3D"overflow-guard" style=3D"width: 811px; height: 570px;"><div cl=
ass=3D"margin" role=3D"presentation" aria-hidden=3D"true" style=3D"position=
: absolute; will-change: transform; top: 0px; height: 1976px; width: 48px;"=
><div class=3D"glyph-margin" style=3D"left: 0px; width: 0px; height: 1976px=
;"></div><div class=3D"margin-view-zones" role=3D"presentation" aria-hidden=
=3D"true" style=3D"position: absolute;"></div><div class=3D"margin-view-ove=
rlays focused" role=3D"presentation" aria-hidden=3D"true" style=3D"position=
: absolute; width: 48px; font-family: Consolas, &quot;Courier New&quot;, mo=
nospace; font-weight: normal; font-size: 14px; line-height: 19px; letter-sp=
acing: 0px; height: 1976px;"><div style=3D"position:absolute;top:532px;widt=
h:100%;height:19px;"><div class=3D"line-numbers" style=3D"left:0px;width:38=
px;">29</div></div><div style=3D"position:absolute;top:551px;width:100%;hei=
ght:19px;"><div class=3D"line-numbers" style=3D"left:0px;width:38px;">30</d=
iv></div><div style=3D"position:absolute;top:418px;width:100%;height:19px;"=
><div class=3D"line-numbers" style=3D"left:0px;width:38px;">23</div></div><=
div style=3D"position:absolute;top:437px;width:100%;height:19px;"><div clas=
s=3D"line-numbers" style=3D"left:0px;width:38px;">24</div></div><div style=
=3D"position:absolute;top:456px;width:100%;height:19px;"><div class=3D"line=
-numbers" style=3D"left:0px;width:38px;">25</div></div><div style=3D"positi=
on:absolute;top:475px;width:100%;height:19px;"><div class=3D"line-numbers" =
style=3D"left:0px;width:38px;">26</div></div><div style=3D"position:absolut=
e;top:494px;width:100%;height:19px;"><div class=3D"line-numbers" style=3D"l=
eft:0px;width:38px;">27</div></div><div style=3D"position:absolute;top:513p=
x;width:100%;height:19px;"><div class=3D"line-numbers" style=3D"left:0px;wi=
dth:38px;">28</div></div><div style=3D"position:absolute;top:361px;width:10=
0%;height:19px;"><div class=3D"line-numbers" style=3D"left:0px;width:38px;"=
>20</div></div><div style=3D"position:absolute;top:380px;width:100%;height:=
19px;"><div class=3D"line-numbers" style=3D"left:0px;width:38px;">21</div><=
/div><div style=3D"position:absolute;top:399px;width:100%;height:19px;"><di=
v class=3D"line-numbers" style=3D"left:0px;width:38px;">22</div></div><div =
style=3D"position:absolute;top:342px;width:100%;height:19px;"><div class=3D=
"line-numbers" style=3D"left:0px;width:38px;">19</div></div><div style=3D"p=
osition:absolute;top:304px;width:100%;height:19px;"><div class=3D"line-numb=
ers" style=3D"left:0px;width:38px;">17</div></div><div style=3D"position:ab=
solute;top:323px;width:100%;height:19px;"><div class=3D"line-numbers" style=
=3D"left:0px;width:38px;">18</div></div><div style=3D"position:absolute;top=
:266px;width:100%;height:19px;"><div class=3D"line-numbers" style=3D"left:0=
px;width:38px;">15</div></div><div style=3D"position:absolute;top:285px;wid=
th:100%;height:19px;"><div class=3D"line-numbers" style=3D"left:0px;width:3=
8px;">16</div></div><div style=3D"position:absolute;top:247px;width:100%;he=
ight:19px;"><div class=3D"line-numbers" style=3D"left:0px;width:38px;">14</=
div></div><div style=3D"position:absolute;top:228px;width:100%;height:19px;=
"><div class=3D"line-numbers" style=3D"left:0px;width:38px;">13</div></div>=
<div style=3D"position:absolute;top:190px;width:100%;height:19px;"><div cla=
ss=3D"line-numbers" style=3D"left:0px;width:38px;">11</div></div><div style=
=3D"position:absolute;top:209px;width:100%;height:19px;"><div class=3D"line=
-numbers" style=3D"left:0px;width:38px;">12</div></div><div style=3D"positi=
on:absolute;top:171px;width:100%;height:19px;"><div class=3D"line-numbers" =
style=3D"left:0px;width:38px;">10</div></div><div style=3D"position:absolut=
e;top:152px;width:100%;height:19px;"><div class=3D"line-numbers" style=3D"l=
eft:0px;width:38px;">9</div></div><div style=3D"position:absolute;top:133px=
;width:100%;height:19px;"><div class=3D"line-numbers" style=3D"left:0px;wid=
th:38px;">8</div></div><div style=3D"position:absolute;top:95px;width:100%;=
height:19px;"><div class=3D"line-numbers" style=3D"left:0px;width:38px;">6<=
/div></div><div style=3D"position:absolute;top:114px;width:100%;height:19px=
;"><div class=3D"line-numbers" style=3D"left:0px;width:38px;">7</div></div>=
<div style=3D"position:absolute;top:76px;width:100%;height:19px;"><div clas=
s=3D"line-numbers" style=3D"left:0px;width:38px;">5</div></div><div style=
=3D"position:absolute;top:57px;width:100%;height:19px;"><div class=3D"line-=
numbers" style=3D"left:0px;width:38px;">4</div></div><div style=3D"position=
:absolute;top:38px;width:100%;height:19px;"><div class=3D"line-numbers" sty=
le=3D"left:0px;width:38px;">3</div></div><div style=3D"position:absolute;to=
p:0px;width:100%;height:19px;"><div class=3D"line-numbers" style=3D"left:0p=
x;width:38px;">1</div></div><div style=3D"position:absolute;top:19px;width:=
100%;height:19px;"><div class=3D"line-numbers" style=3D"left:0px;width:38px=
;">2</div></div></div></div><div class=3D"monaco-scrollable-element editor-=
scrollable vs" role=3D"presentation" data-mprt=3D"5" style=3D"position: abs=
olute; overflow: hidden; left: 48px; width: 763px; height: 570px;"><div cla=
ss=3D"lines-content monaco-editor-background" style=3D"position: absolute; =
overflow: hidden; width: 1e+06px; height: 1e+06px; will-change: transform; =
top: 0px; left: 0px;"><div class=3D"view-overlays focused" role=3D"presenta=
tion" aria-hidden=3D"true" style=3D"position: absolute; height: 0px; width:=
 763px;"><div style=3D"position:absolute;top:532px;width:100%;height:19px;"=
><div class=3D"cigr" style=3D"left:0px;height:19px;width:0.8px"></div><div =
class=3D"cigr" style=3D"left:30.78125px;height:19px;width:0.8px"></div><div=
 class=3D"cigr" style=3D"left:61.5625px;height:19px;width:0.8px"></div></di=
v><div style=3D"position:absolute;top:551px;width:100%;height:19px;"><div c=
lass=3D"cigr" style=3D"left:0px;height:19px;width:0.8px"></div><div class=
=3D"cigr" style=3D"left:30.78125px;height:19px;width:0.8px"></div><div clas=
s=3D"cigr" style=3D"left:61.5625px;height:19px;width:0.8px"></div><div clas=
s=3D"cigr" style=3D"left:92.34375px;height:19px;width:0.8px"></div></div><d=
iv style=3D"position:absolute;top:418px;width:100%;height:19px;"></div><div=
 style=3D"position:absolute;top:437px;width:100%;height:19px;"></div><div s=
tyle=3D"position:absolute;top:456px;width:100%;height:19px;"><div class=3D"=
cigr" style=3D"left:0px;height:19px;width:0.8px"></div></div><div style=3D"=
position:absolute;top:475px;width:100%;height:19px;"><div class=3D"cigr" st=
yle=3D"left:0px;height:19px;width:0.8px"></div></div><div style=3D"position=
:absolute;top:494px;width:100%;height:19px;"><div class=3D"cigr" style=3D"l=
eft:0px;height:19px;width:0.8px"></div><div class=3D"cigr" style=3D"left:30=
.78125px;height:19px;width:0.8px"></div></div><div style=3D"position:absolu=
te;top:513px;width:100%;height:19px;"><div class=3D"cigr" style=3D"left:0px=
;height:19px;width:0.8px"></div><div class=3D"cigr" style=3D"left:30.78125p=
x;height:19px;width:0.8px"></div></div><div style=3D"position:absolute;top:=
361px;width:100%;height:19px;"><div class=3D"cigr" style=3D"left:0px;height=
:19px;width:0.8px"></div><div class=3D"cigr" style=3D"left:30.78125px;heigh=
t:19px;width:0.8px"></div><div class=3D"cigr" style=3D"left:61.5625px;heigh=
t:19px;width:0.8px"></div><div class=3D"cigr" style=3D"left:92.34375px;heig=
ht:19px;width:0.8px"></div></div><div style=3D"position:absolute;top:380px;=
width:100%;height:19px;"><div class=3D"cigr" style=3D"left:0px;height:19px;=
width:0.8px"></div><div class=3D"cigr" style=3D"left:30.78125px;height:19px=
;width:0.8px"></div><div class=3D"cigr" style=3D"left:61.5625px;height:19px=
;width:0.8px"></div><div class=3D"cigr" style=3D"left:92.34375px;height:19p=
x;width:0.8px"></div></div><div style=3D"position:absolute;top:399px;width:=
100%;height:19px;"></div><div style=3D"position:absolute;top:342px;width:10=
0%;height:19px;"><div class=3D"cigr" style=3D"left:0px;height:19px;width:0.=
8px"></div><div class=3D"cigr" style=3D"left:30.78125px;height:19px;width:0=
.8px"></div><div class=3D"cigr" style=3D"left:61.5625px;height:19px;width:0=
.8px"></div><div class=3D"cigr" style=3D"left:92.34375px;height:19px;width:=
0.8px"></div></div><div style=3D"position:absolute;top:304px;width:100%;hei=
ght:19px;"><div class=3D"cigr" style=3D"left:0px;height:19px;width:0.8px"><=
/div><div class=3D"cigr" style=3D"left:30.78125px;height:19px;width:0.8px">=
</div><div class=3D"cigr" style=3D"left:61.5625px;height:19px;width:0.8px">=
</div><div class=3D"cigr" style=3D"left:92.34375px;height:19px;width:0.8px"=
></div></div><div style=3D"position:absolute;top:323px;width:100%;height:19=
px;"><div class=3D"cigr" style=3D"left:0px;height:19px;width:0.8px"></div><=
div class=3D"cigr" style=3D"left:30.78125px;height:19px;width:0.8px"></div>=
<div class=3D"cigr" style=3D"left:61.5625px;height:19px;width:0.8px"></div>=
<div class=3D"cigr" style=3D"left:92.34375px;height:19px;width:0.8px"></div=
></div><div style=3D"position:absolute;top:266px;width:100%;height:19px;"><=
div class=3D"cigr" style=3D"left:0px;height:19px;width:0.8px"></div><div cl=
ass=3D"cigr" style=3D"left:30.78125px;height:19px;width:0.8px"></div><div c=
lass=3D"cigr" style=3D"left:61.5625px;height:19px;width:0.8px"></div></div>=
<div style=3D"position:absolute;top:285px;width:100%;height:19px;"><div cla=
ss=3D"cigr" style=3D"left:0px;height:19px;width:0.8px"></div><div class=3D"=
cigr" style=3D"left:30.78125px;height:19px;width:0.8px"></div><div class=3D=
"cigr" style=3D"left:61.5625px;height:19px;width:0.8px"></div><div class=3D=
"cigr" style=3D"left:92.34375px;height:19px;width:0.8px"></div></div><div s=
tyle=3D"position:absolute;top:247px;width:100%;height:19px;"><div class=3D"=
cigr" style=3D"left:0px;height:19px;width:0.8px"></div><div class=3D"cigr" =
style=3D"left:30.78125px;height:19px;width:0.8px"></div></div><div style=3D=
"position:absolute;top:228px;width:100%;height:19px;"><div class=3D"cigr" s=
tyle=3D"left:0px;height:19px;width:0.8px"></div><div class=3D"cigr" style=
=3D"left:30.78125px;height:19px;width:0.8px"></div></div><div style=3D"posi=
tion:absolute;top:190px;width:100%;height:19px;"><div class=3D"cigr" style=
=3D"left:0px;height:19px;width:0.8px"></div><div class=3D"cigr" style=3D"le=
ft:30.78125px;height:19px;width:0.8px"></div><div class=3D"cigr" style=3D"l=
eft:61.5625px;height:19px;width:0.8px"></div></div><div style=3D"position:a=
bsolute;top:209px;width:100%;height:19px;"><div class=3D"cigr" style=3D"lef=
t:0px;height:19px;width:0.8px"></div></div><div style=3D"position:absolute;=
top:171px;width:100%;height:19px;"><div class=3D"cigr" style=3D"left:0px;he=
ight:19px;width:0.8px"></div><div class=3D"cigr" style=3D"left:30.78125px;h=
eight:19px;width:0.8px"></div><div class=3D"cigr" style=3D"left:61.5625px;h=
eight:19px;width:0.8px"></div></div><div style=3D"position:absolute;top:152=
px;width:100%;height:19px;"><div class=3D"cigr" style=3D"left:0px;height:19=
px;width:0.8px"></div><div class=3D"cigr" style=3D"left:30.78125px;height:1=
9px;width:0.8px"></div></div><div style=3D"position:absolute;top:133px;widt=
h:100%;height:19px;"><div class=3D"cigr" style=3D"left:0px;height:19px;widt=
h:0.8px"></div></div><div style=3D"position:absolute;top:95px;width:100%;he=
ight:19px;"><div class=3D"current-line" style=3D"width:763px; height:19px;"=
></div></div><div style=3D"position:absolute;top:114px;width:100%;height:19=
px;"></div><div style=3D"position:absolute;top:76px;width:100%;height:19px;=
"></div><div style=3D"position:absolute;top:57px;width:100%;height:19px;"><=
/div><div style=3D"position:absolute;top:38px;width:100%;height:19px;"></di=
v><div style=3D"position:absolute;top:0px;width:100%;height:19px;"></div><d=
iv style=3D"position:absolute;top:19px;width:100%;height:19px;"></div></div=
><div role=3D"presentation" aria-hidden=3D"true" class=3D"view-rulers"></di=
v><div class=3D"view-zones" role=3D"presentation" aria-hidden=3D"true" styl=
e=3D"position: absolute;"></div><div class=3D"view-lines" role=3D"presentat=
ion" aria-hidden=3D"true" data-mprt=3D"7" style=3D"position: absolute; font=
-family: Consolas, &quot;Courier New&quot;, monospace; font-weight: normal;=
 font-size: 14px; line-height: 19px; letter-spacing: 0px; width: 763px; hei=
ght: 1976px;"><div style=3D"top:532px;height:19px;" class=3D"view-line"><sp=
an><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;</span><span class=3D"mtk7">0</span><span class=3D"mtk=
1">&nbsp;*&nbsp;succ&nbsp;n&nbsp;=3D&nbsp;</span><span class=3D"mtk7">0</sp=
an><span class=3D"mtk1">&nbsp;*&nbsp;n&nbsp;+&nbsp;</span><span class=3D"mt=
k7">0</span><span class=3D"mtk1">&nbsp;:&nbsp;</span><span class=3D"mtk6">b=
y</span><span class=3D"mtk1">&nbsp;rw&nbsp;mul_succ</span></span></div><div=
 style=3D"top:551px;height:19px;" class=3D"view-line"><span><span class=3D"=
mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...&nbsp;=3D&nbsp;</span><span=
 class=3D"mtk7">0</span><span class=3D"mtk1">&nbsp;+&nbsp;</span><span clas=
s=3D"mtk7">0</span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbs=
p;</span><span class=3D"mtk6">by</span><span class=3D"mtk1">&nbsp;rw&nbsp;i=
h</span></span></div><div style=3D"top:418px;height:19px;" class=3D"view-li=
ne"><span><span class=3D"mtk6">theorem</span><span class=3D"mtk1">&nbsp;zer=
o_mul&nbsp;(n&nbsp;:&nbsp;nat)&nbsp;:&nbsp;</span><span class=3D"mtk7">0</s=
pan><span class=3D"mtk1">&nbsp;*&nbsp;n&nbsp;=3D&nbsp;</span><span class=3D=
"mtk7">0</span><span class=3D"mtk1">&nbsp;:=3D</span></span></div><div styl=
e=3D"top:437px;height:19px;" class=3D"view-line"><span><span class=3D"mtk1"=
>nat.rec_on&nbsp;n</span></span></div><div style=3D"top:456px;height:19px;"=
 class=3D"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;(</=
span><span class=3D"mtk6">show</span><span class=3D"mtk1">&nbsp;</span><spa=
n class=3D"mtk7">0</span><span class=3D"mtk1">&nbsp;*&nbsp;</span><span cla=
ss=3D"mtk7">0</span><span class=3D"mtk1">&nbsp;=3D&nbsp;</span><span class=
=3D"mtk7">0</span><span class=3D"mtk1">,&nbsp;</span><span class=3D"mtk6">f=
rom</span><span class=3D"mtk1">&nbsp;mul_zero&nbsp;</span><span class=3D"mt=
k7">0</span><span class=3D"mtk1">)</span></span></div><div style=3D"top:475=
px;height:19px;" class=3D"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp=
;&nbsp;&nbsp;(</span><span class=3D"mtk6">assume</span><span class=3D"mtk1"=
>&nbsp;n,</span></span></div><div style=3D"top:494px;height:19px;" class=3D=
"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;</span><span class=3D"mtk6">assume</span><span class=3D"mtk1">&=
nbsp;ih&nbsp;:&nbsp;</span><span class=3D"mtk7">0</span><span class=3D"mtk1=
">&nbsp;*&nbsp;n&nbsp;=3D&nbsp;</span><span class=3D"mtk7">0</span><span cl=
ass=3D"mtk1">,</span></span></div><div style=3D"top:513px;height:19px;" cla=
ss=3D"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;</span><span class=3D"mtk6">show</span><span class=3D"mtk1=
">&nbsp;</span><span class=3D"mtk7">0</span><span class=3D"mtk1">&nbsp;*&nb=
sp;succ&nbsp;n&nbsp;=3D&nbsp;</span><span class=3D"mtk7">0</span><span clas=
s=3D"mtk1">,&nbsp;</span><span class=3D"mtk6">from</span><span class=3D"mtk=
1">&nbsp;calc</span></span></div><div style=3D"top:361px;height:19px;" clas=
s=3D"view-line"><span><span>&nbsp;</span></span></div><div style=3D"top:380=
px;height:19px;" class=3D"view-line"><span><span>&nbsp;</span></span></div>=
<div style=3D"top:399px;height:19px;" class=3D"view-line"><span><span class=
=3D"mtk8">--&nbsp;2</span></span></div><div style=3D"top:342px;height:19px;=
" class=3D"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...&nbsp;=3D&n=
bsp;(m&nbsp;*&nbsp;n)&nbsp;+&nbsp;(m&nbsp;*&nbsp;su</span><span class=3D"mt=
k1">cc&nbsp;k)&nbsp;:&nbsp;</span><span class=3D"mtk6">by</span><span class=
=3D"mtk1">&nbsp;rw&nbsp;mul_succ)</span></span></div><div style=3D"top:304p=
x;height:19px;" class=3D"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
...&nbsp;=3D&nbsp;(m&nbsp;*&nbsp;n)&nbsp;+&nbsp;(m&nbsp;*&nbsp;k)</span><sp=
an class=3D"mtk1">&nbsp;+&nbsp;m&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</span><span=
 class=3D"mtk6">by</span><span class=3D"mtk1">&nbsp;rw&nbsp;ih</span></span=
></div><div style=3D"top:323px;height:19px;" class=3D"view-line"><span><spa=
n class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...&nbsp;=3D&nbsp;(m&nbsp;*&nbsp;n)&nbsp;+&nbs=
p;((m&nbsp;*&nbsp;k</span><span class=3D"mtk1">)&nbsp;+&nbsp;m)&nbsp;&nbsp;=
:&nbsp;</span><span class=3D"mtk6">by</span><span class=3D"mtk1">&nbsp;rw&n=
bsp;add_assoc</span></span></div><div style=3D"top:266px;height:19px;" clas=
s=3D"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;m&nbsp;*&nbsp;(n&nbsp;+&nbsp;succ&n=
bsp;k)&nbsp;=3D&nbsp;m&nbsp;*&nbsp;(succ&nbsp;(n&nbsp;+&nbsp;k))&nbsp;</spa=
n><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;rfl</span=
></span></div><div style=3D"top:285px;height:19px;" class=3D"view-line"><sp=
an><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...&nbsp;=3D&nbsp;m&nbsp;*&nbsp;(n&nbsp=
;+&nbsp;k)&nbsp;+&nbsp;m&nbsp;&nbsp;</span><span class=3D"mtk1">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</span><span class=3D"mtk6">by<=
/span><span class=3D"mtk1">&nbsp;rw&nbsp;mul_succ</span></span></div><div s=
tyle=3D"top:247px;height:19px;" class=3D"view-line"><span><span class=3D"mt=
k1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class=3D"m=
tk6">show</span><span class=3D"mtk1">&nbsp;m&nbsp;*&nbsp;(n&nbsp;+&nbsp;suc=
c&nbsp;k)&nbsp;=3D&nbsp;(m&nbsp;*&nbsp;n)&nbsp;+&nbsp;(m&nbsp;*&nbsp;succ&n=
bsp;k),&nbsp;</span><span class=3D"mtk6">from</span><span class=3D"mtk1">&n=
bsp;calc</span></span></div><div style=3D"top:228px;height:19px;" class=3D"=
view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;</span><span class=3D"mtk6">assume</span><span class=3D"mtk1">&n=
bsp;ih&nbsp;:&nbsp;m&nbsp;*&nbsp;(n&nbsp;+&nbsp;k)&nbsp;=3D&nbsp;(m&nbsp;*&=
nbsp;n)&nbsp;+&nbsp;(m&nbsp;*&nbsp;k),</span></span></div><div style=3D"top=
:190px;height:19px;" class=3D"view-line"><span><span class=3D"mtk1">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;...&nbsp;=3D&nbsp;(m&nbsp;*&nbsp;n)&nbsp;+&nbsp;(m&nbsp;*&nbs=
p;</span><span class=3D"mtk7">0</span><span class=3D"mtk1">)&nbsp;:&nbsp;</=
span><span class=3D"mtk6">by</span><span class=3D"mtk1">&nbsp;rw&nbsp;mul_z=
ero)</span></span></div><div style=3D"top:209px;height:19px;" class=3D"view=
-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;(</span><span cla=
ss=3D"mtk6">assume</span><span class=3D"mtk1">&nbsp;k,</span></span></div><=
div style=3D"top:171px;height:19px;" class=3D"view-line"><span><span class=
=3D"mtk1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...&nbsp;=3D&nbsp;(m&nbsp;*&nbsp;n)&nbsp;+&n=
bsp;</span><span class=3D"mtk7">0</span><span class=3D"mtk1">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</span><span class=3D"mtk6">by</span><sp=
an class=3D"mtk1">&nbsp;rw&nbsp;add_zero</span></span></div><div style=3D"t=
op:152px;height:19px;" class=3D"view-line"><span><span class=3D"mtk1">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;m&nbsp;*&nbsp;(n&nbsp;+&nbsp;</s=
pan><span class=3D"mtk7">0</span><span class=3D"mtk1">)&nbsp;=3D&nbsp;m&nbs=
p;*&nbsp;n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;:&nbsp;</span><span class=3D"mtk6">by</span><span class=3D"mtk=
1">&nbsp;rw&nbsp;add_zero</span></span></div><div style=3D"top:133px;height=
:19px;" class=3D"view-line"><span><span class=3D"mtk1">&nbsp;&nbsp;&nbsp;&n=
bsp;(</span><span class=3D"mtk6">show</span><span class=3D"mtk1">&nbsp;m&nb=
sp;*&nbsp;(n&nbsp;+&nbsp;</span><span class=3D"mtk7">0</span><span class=3D=
"mtk1">)&nbsp;=3D&nbsp;(m&nbsp;*&nbsp;n)&nbsp;+&nbsp;(m&nbsp;*&nbsp;</span>=
<span class=3D"mtk7">0</span><span class=3D"mtk1">),&nbsp;</span><span clas=
s=3D"mtk6">from</span><span class=3D"mtk1">&nbsp;calc</span></span></div><d=
iv style=3D"top:95px;height:19px;" class=3D"view-line"><span><span class=3D=
"mtk6">theorem</span><span class=3D"mtk1">&nbsp;mul_add&nbsp;(m&nbsp;n&nbsp=
;k&nbsp;:&nbsp;nat)&nbsp;:&nbsp;m&nbsp;*&nbsp;(n&nbsp;+&nbsp;k)&nbsp;=3D&nb=
sp;(m&nbsp;*&nbsp;n)&nbsp;+&nbsp;(</span><span class=3D"mtk1">m&nbsp;*&nbsp=
;k)&nbsp;:=3D</span></span></div><div style=3D"top:114px;height:19px;" clas=
s=3D"view-line"><span><span class=3D"mtk1">nat.rec_on&nbsp;k</span></span><=
/div><div style=3D"top:76px;height:19px;" class=3D"view-line"><span><span c=
lass=3D"mtk8">--&nbsp;1</span></span></div><div style=3D"top:57px;height:19=
px;" class=3D"view-line"><span><span>&nbsp;</span></span></div><div style=
=3D"top:38px;height:19px;" class=3D"view-line"><span><span class=3D"mtk6">o=
pen</span><span class=3D"mtk1">&nbsp;nat</span></span></div><div style=3D"t=
op:0px;height:19px;" class=3D"view-line"><span><span class=3D"mtk6">namespa=
ce</span><span class=3D"mtk1">&nbsp;homework5</span></span></div><div style=
=3D"top:19px;height:19px;" class=3D"view-line"><span><span>&nbsp;</span></s=
pan></div></div><div data-mprt=3D"1" class=3D"contentWidgets" style=3D"posi=
tion: absolute; top: 0px;"></div><div role=3D"presentation" aria-hidden=3D"=
true" class=3D"cursors-layer cursor-line-style cursor-solid"><div class=3D"=
cursor" style=3D"height: 19px; top: 95px; left: 508px; font-family: Consola=
s, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px=
; line-height: 19px; letter-spacing: 0px; display: block; visibility: inher=
it; width: 1.6px;"></div></div></div><div role=3D"presentation" aria-hidden=
=3D"true" class=3D"invisible scrollbar horizontal" style=3D"position: absol=
ute; width: 749px; height: 10px; left: 0px; bottom: 0px;"><div class=3D"sli=
der" style=3D"position: absolute; top: 0px; left: 0px; height: 10px; will-c=
hange: transform; width: 749px;"></div></div><canvas class=3D"decorationsOv=
erviewRuler" width=3D"17" height=3D"712" style=3D"position: absolute; will-=
change: transform; top: 0px; right: 0px; width: 14px; height: 570px;"></can=
vas><div role=3D"presentation" aria-hidden=3D"true" class=3D"visible scroll=
bar vertical" style=3D"position: absolute; width: 14px; height: 570px; righ=
t: 0px; top: 0px;"><div class=3D"slider" style=3D"position: absolute; top: =
0px; left: 0px; width: 14px; will-change: transform; height: 164px;"></div>=
</div></div><div role=3D"presentation" aria-hidden=3D"true" style=3D"width:=
 811px;" class=3D""></div><textarea data-mprt=3D"6" class=3D"inputarea" wra=
p=3D"off" autocorrect=3D"off" autocapitalize=3D"off" autocomplete=3D"off" s=
pellcheck=3D"false" aria-label=3D"Editor content;Press Alt+F1 for Accessibi=
lity Options." role=3D"textbox" aria-multiline=3D"true" aria-haspopup=3D"fa=
lse" aria-autocomplete=3D"both" style=3D"font-size: 1px; line-height: 19px;=
 top: 95px; left: 556px; width: 1px; height: 1px; font-family: Consolas, &q=
uot;Courier New&quot;, monospace; font-weight: normal; letter-spacing: 0px;=
"></textarea><div style=3D"position: absolute; top: 0px; left: 0px; width: =
0px; height: 0px;" class=3D"monaco-editor-background textAreaCover line-num=
bers"></div><div data-mprt=3D"4" class=3D"overlayWidgets" style=3D"width: 8=
11px;"><div class=3D"editor-widget find-widget" aria-hidden=3D"true" widget=
id=3D"editor.contrib.findWidget" style=3D"width: 411px; max-width: 768px; p=
osition: absolute;"><div title=3D"Toggle Replace mode" tabindex=3D"-1" clas=
s=3D"button toggle left collapse disabled" role=3D"button" aria-label=3D"To=
ggle Replace mode" aria-expanded=3D"false" aria-disabled=3D"true"></div><di=
v class=3D"find-part"><div class=3D"monaco-findInput disabled" style=3D"wid=
th: 221px;"><div class=3D"monaco-inputbox idle" style=3D"background-color: =
rgb(255, 255, 255); color: rgb(108, 108, 108);"><div class=3D"wrapper"><inp=
ut class=3D"input" autocorrect=3D"off" autocapitalize=3D"off" spellcheck=3D=
"false" type=3D"text" wrap=3D"off" aria-label=3D"Find" placeholder=3D"Find"=
 title=3D"Find" disabled=3D"" style=3D"width: 155px; background-color: rgb(=
255, 255, 255); color: rgb(108, 108, 108);"></div></div><div class=3D"contr=
ols"><div title=3D"Match Case (Alt+C)" class=3D"custom-checkbox monaco-case=
-sensitive unchecked" role=3D"checkbox" aria-checked=3D"false" aria-label=
=3D"Match Case (Alt+C)" aria-disabled=3D"true" style=3D"border-color: trans=
parent;"></div><div title=3D"Match Whole Word (Alt+W)" class=3D"custom-chec=
kbox monaco-whole-word unchecked" role=3D"checkbox" aria-checked=3D"false" =
aria-label=3D"Match Whole Word (Alt+W)" aria-disabled=3D"true" style=3D"bor=
der-color: transparent;"></div><div title=3D"Use Regular Expression (Alt+R)=
" class=3D"custom-checkbox monaco-regex unchecked" role=3D"checkbox" aria-c=
hecked=3D"false" aria-label=3D"Use Regular Expression (Alt+R)" aria-disable=
d=3D"true" style=3D"border-color: transparent;"></div></div></div><div clas=
s=3D"matchesCount" title=3D"" style=3D"min-width: 69px;">No Results</div><d=
iv title=3D"Previous match (Shift+F3)" tabindex=3D"-1" class=3D"button prev=
ious disabled" role=3D"button" aria-label=3D"Previous match (Shift+F3)" ari=
a-disabled=3D"true"></div><div title=3D"Next match (F3)" tabindex=3D"-1" cl=
ass=3D"button next disabled" role=3D"button" aria-label=3D"Next match (F3)"=
 aria-disabled=3D"true"></div><div class=3D"monaco-checkbox" title=3D"Find =
in selection (Alt+L)" tabindex=3D"-1"><input type=3D"checkbox" class=3D"che=
ckbox" id=3D"checkbox-0" tabindex=3D"-1" disabled=3D""><label class=3D"labe=
l" for=3D"checkbox-0" tabindex=3D"-1"></label></div><div title=3D"Close (Es=
cape)" tabindex=3D"-1" class=3D"button close-fw disabled" role=3D"button" a=
ria-label=3D"Close (Escape)" aria-disabled=3D"true"></div></div><div class=
=3D"replace-part"><div class=3D"replace-input" style=3D"width: 221px;"><div=
 class=3D"monaco-inputbox idle" style=3D"background-color: rgb(255, 255, 25=
5); color: rgb(108, 108, 108);"><div class=3D"wrapper"><input class=3D"inpu=
t" autocorrect=3D"off" autocapitalize=3D"off" spellcheck=3D"false" type=3D"=
text" wrap=3D"off" aria-label=3D"Replace" placeholder=3D"Replace" title=3D"=
Replace" disabled=3D"" style=3D"background-color: rgb(255, 255, 255); color=
: rgb(108, 108, 108); width: 227px;"></div></div></div><div title=3D"Replac=
e (Ctrl+Shift+1)" tabindex=3D"-1" class=3D"button replace disabled" role=3D=
"button" aria-label=3D"Replace (Ctrl+Shift+1)" aria-disabled=3D"true"></div=
><div title=3D"Replace All (Ctrl+Alt+Enter)" tabindex=3D"-1" class=3D"butto=
n replace-all disabled" role=3D"button" aria-label=3D"Replace All (Ctrl+Alt=
+Enter)" aria-disabled=3D"true"></div></div><div class=3D"monaco-sash verti=
cal" style=3D"width: 5px;"></div></div><div class=3D"findOptionsWidget" rol=
e=3D"presentation" aria-hidden=3D"true" widgetid=3D"editor.contrib.findOpti=
onsWidget" style=3D"display: none; top: 0px; position: absolute; right: 28p=
x;"><div title=3D"Match Case (Alt+C)" class=3D"custom-checkbox monaco-case-=
sensitive unchecked" tabindex=3D"0" role=3D"checkbox" aria-checked=3D"false=
" aria-label=3D"Match Case (Alt+C)" style=3D"border-color: transparent;"></=
div><div title=3D"Match Whole Word (Alt+W)" class=3D"custom-checkbox monaco=
-whole-word unchecked" tabindex=3D"0" role=3D"checkbox" aria-checked=3D"fal=
se" aria-label=3D"Match Whole Word (Alt+W)" style=3D"border-color: transpar=
ent;"></div><div title=3D"Use Regular Expression (Alt+R)" class=3D"custom-c=
heckbox monaco-regex unchecked" tabindex=3D"0" role=3D"checkbox" aria-check=
ed=3D"false" aria-label=3D"Use Regular Expression (Alt+R)" style=3D"border-=
color: transparent;"></div></div><div class=3D"monaco-editor-hover hidden" =
aria-hidden=3D"true" role=3D"presentation" widgetid=3D"editor.contrib.modes=
GlyphHoverWidget" style=3D"position: absolute;"></div><div class=3D"accessi=
bilityHelpWidget" role=3D"dialog" aria-hidden=3D"true" widgetid=3D"editor.c=
ontrib.accessibilityHelpWidget" style=3D"display: none; position: absolute;=
"><div role=3D"document"></div></div></div><div data-mprt=3D"8" class=3D"mi=
nimap slider-mouseover" role=3D"presentation" aria-hidden=3D"true" style=3D=
"position: absolute; right: 14px; width: 0px; height: 570px;"><div class=3D=
"minimap-shadow-hidden" style=3D"height: 570px;"></div><canvas width=3D"1" =
height=3D"712" style=3D"position: absolute; left: 0px; width: 0.8px; height=
: 569.6px;"></canvas><div class=3D"minimap-slider" style=3D"position: absol=
ute; will-change: transform; width: 0px;"><div class=3D"minimap-slider-hori=
zontal" style=3D"position: absolute;"></div></div></div></div><div data-mpr=
t=3D"2" class=3D"overflowingContentWidgets"><div class=3D"monaco-editor-hov=
er hidden" tabindex=3D"0" widgetid=3D"editor.contrib.modesContentHoverWidge=
t" style=3D"position: absolute; max-width: 1536px; visibility: hidden;"><di=
v class=3D"monaco-scrollable-element " role=3D"presentation" style=3D"posit=
ion: relative; overflow: hidden;"><div class=3D"monaco-editor-hover-content=
" style=3D"overflow: hidden; font-size: 14px; line-height: 19px; max-height=
: 250px;"></div><div role=3D"presentation" aria-hidden=3D"true" class=3D"in=
visible scrollbar horizontal" style=3D"position: absolute;"><div class=3D"s=
lider" style=3D"position: absolute; top: 0px; left: 0px; height: 10px; will=
-change: transform;"></div></div><div role=3D"presentation" aria-hidden=3D"=
true" class=3D"invisible scrollbar vertical" style=3D"position: absolute;">=
<div class=3D"slider" style=3D"position: absolute; top: 0px; left: 0px; wid=
th: 10px; will-change: transform;"></div></div><div class=3D"shadow"></div>=
<div class=3D"shadow"></div><div class=3D"shadow top-left-corner"></div></d=
iv></div><div class=3D"editor-widget parameter-hints-widget" widgetid=3D"ed=
itor.widget.parameterHintsWidget" style=3D"font-size: 14px; max-height: 250=
px; position: absolute; max-width: 1536px; visibility: hidden;"><div class=
=3D"wrapper"><div class=3D"buttons"><div class=3D"button previous"></div><d=
iv class=3D"button next"></div></div><div class=3D"overloads"></div><div cl=
ass=3D"monaco-scrollable-element " role=3D"presentation" style=3D"position:=
 relative; overflow: hidden;"><div class=3D"body" style=3D"overflow: hidden=
;"><div class=3D"signature"></div><div class=3D"docs"></div></div><div role=
=3D"presentation" aria-hidden=3D"true" class=3D"invisible scrollbar horizon=
tal" style=3D"position: absolute;"><div class=3D"slider" style=3D"position:=
 absolute; top: 0px; left: 0px; height: 10px; will-change: transform;"></di=
v></div><div role=3D"presentation" aria-hidden=3D"true" class=3D"invisible =
scrollbar vertical" style=3D"position: absolute;"><div class=3D"slider" sty=
le=3D"position: absolute; top: 0px; left: 0px; width: 10px; will-change: tr=
ansform;"></div></div><div class=3D"shadow"></div><div class=3D"shadow"></d=
iv><div class=3D"shadow top-left-corner"></div></div></div></div><div class=
=3D"monaco-editor rename-box" widgetid=3D"__renameInputWidget" style=3D"hei=
ght: 19px; box-shadow: rgb(168, 168, 168) 0px 2px 8px; position: absolute; =
max-width: 1536px; visibility: hidden;"><input class=3D"rename-input" type=
=3D"text" aria-label=3D"Rename input. Type new name and press Enter to comm=
it." style=3D"font-family: Consolas, &quot;Courier New&quot;, monospace; fo=
nt-weight: normal; font-size: 14px; background-color: rgb(255, 255, 255); c=
olor: rgb(108, 108, 108); border-width: 0px; border-style: none;"></div><di=
v class=3D"editor-widget suggest-widget" widgetid=3D"editor.widget.suggestW=
idget" style=3D"position: absolute; max-width: 1536px; visibility: hidden;"=
><div class=3D"message" style=3D"display: none; background-color: rgb(239, =
239, 242); border-color: rgb(200, 200, 200);"></div><div class=3D"tree" sty=
le=3D"background-color: rgb(239, 239, 242); border-color: rgb(200, 200, 200=
);"><div class=3D"monaco-list list_id_1 selection-none" role=3D"tree" tabin=
dex=3D"0"><div class=3D"monaco-scrollable-element " role=3D"presentation" s=
tyle=3D"position: relative; overflow: hidden;"><div class=3D"monaco-list-ro=
ws" style=3D"overflow: hidden; height: 0px;"></div><div role=3D"presentatio=
n" aria-hidden=3D"true" class=3D"invisible scrollbar horizontal" style=3D"p=
osition: absolute;"><div class=3D"slider" style=3D"position: absolute; top:=
 0px; left: 0px; height: 10px; will-change: transform;"></div></div><div ro=
le=3D"presentation" aria-hidden=3D"true" class=3D"invisible scrollbar verti=
cal" style=3D"position: absolute;"><div class=3D"slider" style=3D"position:=
 absolute; top: 0px; left: 0px; width: 10px; will-change: transform;"></div=
></div></div></div></div><div class=3D"details" style=3D"font-size: 14px; d=
isplay: none; background-color: rgb(239, 239, 242); border-color: rgb(200, =
200, 200);"><div class=3D"monaco-scrollable-element " role=3D"presentation"=
 style=3D"position: relative; overflow: hidden;"><div class=3D"body" style=
=3D"overflow: hidden;"><div class=3D"header"><span class=3D"close" title=3D=
"Read less... (Ctrl+Space)" style=3D"height: 19px; width: 19px;"></span><p =
class=3D"type" style=3D"font-family: Consolas, &quot;Courier New&quot;, mon=
ospace;"></p></div><p class=3D"docs"></p></div><div role=3D"presentation" a=
ria-hidden=3D"true" class=3D"invisible scrollbar horizontal" style=3D"posit=
ion: absolute;"><div class=3D"slider" style=3D"position: absolute; top: 0px=
; left: 0px; height: 10px; will-change: transform;"></div></div><div role=
=3D"presentation" aria-hidden=3D"true" class=3D"invisible scrollbar vertica=
l" style=3D"position: absolute;"><div class=3D"slider" style=3D"position: a=
bsolute; top: 0px; left: 0px; width: 10px; will-change: transform;"></div><=
/div><div class=3D"shadow"></div><div class=3D"shadow"></div><div class=3D"=
shadow top-left-corner"></div></div></div></div></div><div class=3D"context=
-view builder-hidden" aria-hidden=3D"true"></div></div></div></div><span cl=
ass=3D"Resizer vertical "></span><div class=3D"Pane vertical Pane2  " style=
=3D"flex: 1 1 0%; position: relative; outline: none;"><div style=3D"overflo=
w-y: scroll; height: calc(100% - 10px); margin: 1ex;"><div></div></div></di=
v></div></div></div></div>
   =20
   =20
   =20
 =20

<div class=3D"monaco-aria-container"><div class=3D"monaco-alert" role=3D"al=
ert" aria-atomic=3D"true"></div><div class=3D"monaco-status" role=3D"status=
" aria-atomic=3D"true"></div></div></body></html>
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: text/css
Content-Transfer-Encoding: quoted-printable
Content-Location: cid:css-ceb136f7-dd7a-4499-8b32-d203cd99299c@mhtml.blink

@charset "utf-8";
=0A
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: text/css
Content-Transfer-Encoding: quoted-printable
Content-Location: cid:css-37fcfc34-18d7-46c7-8d3c-4876b6696d74@mhtml.blink

@charset "utf-8";

.monaco-editor, .monaco-editor-background, .monaco-editor .inputarea.ime-in=
put { background-color: rgb(255, 255, 254); }

.monaco-editor, .monaco-editor .inputarea.ime-input { color: rgb(0, 0, 0); =
}

.monaco-editor .margin { background-color: rgb(255, 255, 254); }

.monaco-editor .rangeHighlight { background-color: rgba(253, 255, 0, 0.2); =
}

.vs-whitespace { color: rgba(51, 51, 51, 0.2) !important; }

.monaco-editor .bracket-match { background-color: rgba(0, 100, 0, 0.1); }

.monaco-editor .bracket-match { border: 1px solid rgb(185, 185, 185); }

.monaco-editor .colorpicker-widget { background-color: rgb(239, 239, 242); =
}

.monaco-editor .colorpicker-widget { border: 1px solid rgb(200, 200, 200); =
}

.monaco-editor .colorpicker-header { border-bottom: 1px solid rgb(200, 200,=
 200); }

.monaco-editor.vs .valueSetReplacement { outline: rgb(185, 185, 185) solid =
2px; }

.monaco-editor .focused .selectionHighlight { background-color: rgba(173, 2=
14, 255, 0.3); }

.monaco-editor .selectionHighlight { background-color: rgba(173, 214, 255, =
0.15); }

.monaco-editor .wordHighlight { background-color: rgba(87, 87, 87, 0.25); }

.monaco-editor .wordHighlightStrong { background-color: rgba(14, 99, 156, 0=
.25); }

.monaco-editor .findOptionsWidget { background-color: rgb(239, 239, 242); }

.monaco-editor .findOptionsWidget { box-shadow: rgb(168, 168, 168) 0px 2px =
8px; }

.monaco-editor .view-overlays .current-line { border: 2px solid rgb(238, 23=
8, 238); }

.monaco-editor .margin-view-overlays .current-line-margin { border: 2px sol=
id rgb(238, 238, 238); }

.monaco-editor .lines-content .cigr { background-color: rgb(211, 211, 211);=
 }

.monaco-editor .line-numbers { color: rgb(43, 145, 175); }

.monaco-editor .minimap-slider, .monaco-editor .minimap-slider .minimap-sli=
der-horizontal { background: rgba(100, 100, 100, 0.2); }

.monaco-editor .minimap-slider:hover, .monaco-editor .minimap-slider:hover =
.minimap-slider-horizontal { background: rgba(100, 100, 100, 0.35); }

.monaco-editor .minimap-slider.active, .monaco-editor .minimap-slider.activ=
e .minimap-slider-horizontal { background: rgba(0, 0, 0, 0.3); }

.monaco-editor .minimap-shadow-visible { box-shadow: rgb(221, 221, 221) -6p=
x 0px 6px -6px inset; }

.monaco-editor .view-ruler { background-color: rgb(211, 211, 211); }

.monaco-editor .scroll-decoration { box-shadow: rgb(221, 221, 221) 0px 6px =
6px -6px inset; }

.monaco-editor .focused .selected-text { background-color: rgb(173, 214, 25=
5); }

.monaco-editor .selected-text { background-color: rgb(229, 235, 241); }

.monaco-editor .cursor { background-color: rgb(0, 0, 0); border-color: rgb(=
0, 0, 0); color: rgb(255, 255, 255); }

.monaco-diff-editor .diff-review-line-number { color: rgb(43, 145, 175); }

.monaco-diff-editor .diff-review-shadow { box-shadow: rgb(221, 221, 221) 0p=
x -6px 6px -6px inset; }

.monaco-editor .redsquiggly { background: url("data:image/svg+xml,%3Csvg%20=
xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20height%3D'3'%20width%3D'6'=
%3E%3Cg%20fill%3D'%23ff0000'%3E%3Cpolygon%20points%3D'5.5%2C0%202.5%2C3%201=
.1%2C3%204.1%2C0'%2F%3E%3Cpolygon%20points%3D'4%2C0%206%2C2%206%2C0.6%205.4=
%2C0'%2F%3E%3Cpolygon%20points%3D'0%2C2%201%2C3%202.4%2C3%200%2C0.6'%2F%3E%=
3C%2Fg%3E%3C%2Fsvg%3E") left bottom repeat-x; }

.monaco-editor .greensquiggly { background: url("data:image/svg+xml;utf8,%3=
Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20height%3D'3'%20widt=
h%3D'6'%3E%3Cg%20fill%3D'%23008000'%3E%3Cpolygon%20points%3D'5.5%2C0%202.5%=
2C3%201.1%2C3%204.1%2C0'%2F%3E%3Cpolygon%20points%3D'4%2C0%206%2C2%206%2C0.=
6%205.4%2C0'%2F%3E%3Cpolygon%20points%3D'0%2C2%201%2C3%202.4%2C3%200%2C0.6'=
%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E") left bottom repeat-x; }

.monaco-editor .line-insert, .monaco-editor .char-insert { background-color=
: rgba(155, 185, 85, 0.2); }

.monaco-diff-editor .line-insert, .monaco-diff-editor .char-insert { backgr=
ound-color: rgba(155, 185, 85, 0.2); }

.monaco-editor .inline-added-margin-view-zone { background-color: rgba(155,=
 185, 85, 0.2); }

.monaco-editor .line-delete, .monaco-editor .char-delete { background-color=
: rgba(255, 0, 0, 0.2); }

.monaco-diff-editor .line-delete, .monaco-diff-editor .char-delete { backgr=
ound-color: rgba(255, 0, 0, 0.2); }

.monaco-editor .inline-deleted-margin-view-zone { background-color: rgba(25=
5, 0, 0, 0.2); }

.monaco-diff-editor.side-by-side .editor.modified { box-shadow: rgb(221, 22=
1, 221) -6px 0px 5px -5px; }

.monaco-editor .codelens-decoration { color: rgb(153, 153, 153); }

.monaco-editor .codelens-decoration > a:hover { color: rgb(0, 0, 255) !impo=
rtant; }

.monaco-editor .findMatch { background-color: rgba(234, 92, 0, 0.33); }

.monaco-editor .currentFindMatch { background-color: rgb(168, 172, 148); }

.monaco-editor .findScope { background-color: rgba(180, 180, 180, 0.3); }

.monaco-editor .find-widget { background-color: rgb(239, 239, 242); }

.monaco-editor .find-widget { box-shadow: rgb(168, 168, 168) 0px 2px 8px; }

.monaco-editor .find-widget.no-results .matchesCount { color: rgb(161, 38, =
13); }

.monaco-editor .monaco-editor-overlaymessage .anchor { border-top-color: rg=
b(0, 122, 204); }

.monaco-editor .monaco-editor-overlaymessage .message { border: 1px solid r=
gb(0, 122, 204); }

.monaco-editor .monaco-editor-overlaymessage .message { background-color: r=
gb(214, 236, 242); }

.monaco-editor .hoverHighlight { background-color: rgba(173, 214, 255, 0.15=
); }

.monaco-editor .monaco-editor-hover { background-color: rgb(239, 239, 242);=
 }

.monaco-editor .monaco-editor-hover { border: 1px solid rgb(200, 200, 200);=
 }

.monaco-editor .monaco-editor-hover .hover-row:not(:first-child):not(:empty=
) { border-top: 1px solid rgba(200, 200, 200, 0.5); }

.monaco-editor .monaco-editor-hover a { color: rgb(64, 128, 208); }

.monaco-editor .monaco-editor-hover code { background-color: rgba(220, 220,=
 220, 0.4); }

.monaco-editor .detected-link-active { color: rgb(0, 0, 255) !important; }

.monaco-editor .parameter-hints-widget { border: 1px solid rgb(200, 200, 20=
0); }

.monaco-editor .parameter-hints-widget.multiple .body { border-left: 1px so=
lid rgba(200, 200, 200, 0.5); }

.monaco-editor .parameter-hints-widget .signature.has-docs { border-bottom:=
 1px solid rgba(200, 200, 200, 0.5); }

.monaco-editor .parameter-hints-widget { background-color: rgb(239, 239, 24=
2); }

.monaco-editor .suggest-widget:not(.frozen) .monaco-highlighted-label .high=
light { color: rgb(0, 122, 204); }

.monaco-editor .suggest-widget { color: rgb(0, 0, 0); }

.monaco-editor .reference-zone-widget .ref-tree .referenceMatch { backgroun=
d-color: rgba(234, 92, 0, 0.3); }

.monaco-editor .reference-zone-widget .preview .reference-decoration { back=
ground-color: rgba(245, 216, 2, 0.87); }

.monaco-editor .reference-zone-widget .ref-tree { background-color: rgb(243=
, 243, 243); }

.monaco-editor .reference-zone-widget .ref-tree { color: rgb(100, 100, 101)=
; }

.monaco-editor .reference-zone-widget .ref-tree .reference-file { color: rg=
b(30, 30, 30); }

.monaco-editor .reference-zone-widget .ref-tree .monaco-tree.focused .monac=
o-tree-rows > .monaco-tree-row.selected:not(.highlighted) { background-colo=
r: rgba(51, 153, 255, 0.2); }

.monaco-editor .reference-zone-widget .ref-tree .monaco-tree.focused .monac=
o-tree-rows > .monaco-tree-row.selected:not(.highlighted) { color: rgb(108,=
 108, 108) !important; }

.monaco-editor .reference-zone-widget .preview .monaco-editor .monaco-edito=
r-background, .monaco-editor .reference-zone-widget .preview .monaco-editor=
 .inputarea.ime-input { background-color: rgb(242, 248, 252); }

.monaco-editor .reference-zone-widget .preview .monaco-editor .margin { bac=
kground-color: rgb(242, 248, 252); }

.monaco-editor .goto-definition-link { color: rgb(0, 0, 255) !important; }

.monaco-editor .accessibilityHelpWidget { background-color: rgb(239, 239, 2=
42); }

.monaco-editor .accessibilityHelpWidget { box-shadow: rgb(168, 168, 168) 0p=
x 2px 8px; }

.monaco-editor .tokens-inspect-widget { border: 1px solid rgb(200, 200, 200=
); }

.monaco-editor .tokens-inspect-widget .tokens-inspect-separator { backgroun=
d-color: rgb(200, 200, 200); }

.monaco-editor .tokens-inspect-widget { background-color: rgb(239, 239, 242=
); }

.mtk1 { color: rgb(0, 0, 0); }

.mtk2 { color: rgb(255, 255, 254); }

.mtk3 { color: rgb(128, 128, 128); }

.mtk4 { color: rgb(255, 0, 0); }

.mtk5 { color: rgb(4, 81, 165); }

.mtk6 { color: rgb(0, 0, 255); }

.mtk7 { color: rgb(9, 136, 90); }

.mtk8 { color: rgb(0, 128, 0); }

.mtk9 { color: rgb(221, 0, 0); }

.mtk10 { color: rgb(56, 56, 56); }

.mtk11 { color: rgb(205, 49, 49); }

.mtk12 { color: rgb(134, 59, 0); }

.mtk13 { color: rgb(175, 0, 219); }

.mtk14 { color: rgb(128, 0, 0); }

.mtk15 { color: rgb(224, 0, 0); }

.mtk16 { color: rgb(48, 48, 192); }

.mtk17 { color: rgb(102, 102, 102); }

.mtk18 { color: rgb(119, 136, 153); }

.mtk19 { color: rgb(255, 0, 255); }

.mtk20 { color: rgb(163, 21, 21); }

.mtk21 { color: rgb(79, 118, 172); }

.mtk22 { color: rgb(0, 128, 128); }

.mtk23 { color: rgb(0, 17, 136); }

.mtk24 { color: rgb(72, 100, 170); }

.mtki { font-style: italic; }

.mtkb { font-weight: bold; }

.mtku { text-decoration: underline; }
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: text/css
Content-Transfer-Encoding: quoted-printable
Content-Location: cid:css-b74170d1-7079-4876-b811-ba3ae299f880@mhtml.blink

@charset "utf-8";
=0A
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: text/css
Content-Transfer-Encoding: quoted-printable
Content-Location: cid:css-808e8adb-0df9-4cba-904b-c951791ee105@mhtml.blink

@charset "utf-8";

.monaco-list.list_id_1:focus .monaco-list-row.focused { background-color: r=
gb(220, 235, 252); }

.monaco-list.list_id_1:focus .monaco-list-row.selected { background-color: =
rgb(82, 168, 255); }

.monaco-list.list_id_1:focus .monaco-list-row.selected:hover { background-c=
olor: rgb(82, 168, 255); }

.monaco-list.list_id_1:focus .monaco-list-row.selected { color: rgb(255, 25=
5, 255); }

.monaco-list.list_id_1:focus .monaco-list-row.selected.focused { background=
-color: rgb(51, 153, 255); }

.monaco-list.list_id_1:focus .monaco-list-row.selected.focused { color: rgb=
(255, 255, 255); }

.monaco-list.list_id_1 .monaco-list-row.focused { background-color: rgb(220=
, 235, 252); }

.monaco-list.list_id_1 .monaco-list-row.focused:hover { background-color: r=
gb(220, 235, 252); }

.monaco-list.list_id_1 .monaco-list-row.selected { background-color: rgb(20=
4, 206, 219); }

.monaco-list.list_id_1 .monaco-list-row.selected:hover { background-color: =
rgb(204, 206, 219); }

.monaco-list.list_id_1 .monaco-list-row:hover { background-color: rgb(240, =
240, 240); }
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: text/css
Content-Transfer-Encoding: quoted-printable
Content-Location: https://leanprover.github.io/live/latest/vs/editor/editor.main.css

@charset "utf-8";

.builder-hidden { display: none !important; visibility: hidden !important; =
}

.builder-visible { display: inherit; visibility: visible; }

.monaco-action-bar { text-align: right; overflow: hidden; white-space: nowr=
ap; }

.monaco-action-bar .actions-container { display: flex; margin: 0px auto; pa=
dding: 0px; width: 100%; justify-content: flex-end; }

.monaco-action-bar.vertical .actions-container { display: inline-block; }

.monaco-action-bar .action-item { cursor: pointer; display: inline-block; t=
ransition: transform 50ms ease 0s; position: relative; }

.monaco-action-bar .action-item.disabled { cursor: default; }

.monaco-action-bar.animated .action-item.active { transform: scale(1.27202)=
; }

.monaco-action-bar .action-item .icon { display: inline-block; }

.monaco-action-bar .action-label { font-size: 12px; margin-right: 0.3em; }

.monaco-action-bar .action-label.octicon { font-size: 15px; line-height: 35=
px; text-align: center; }

.monaco-action-bar .action-item.disabled .action-label, .monaco-action-bar =
.action-item.disabled .action-label:hover { opacity: 0.4; }

.monaco-action-bar.vertical { text-align: left; }

.monaco-action-bar.vertical .action-item { display: block; }

.monaco-action-bar.vertical .action-label.separator { display: block; borde=
r-bottom: 1px solid rgb(187, 187, 187); padding-top: 1px; margin-left: 0.8e=
m; margin-right: 0.8em; }

.monaco-action-bar.animated.vertical .action-item.active { transform: trans=
late(5px); }

.secondary-actions .monaco-action-bar .action-label { margin-left: 6px; }

.monaco-action-bar .action-item.select-container { overflow: hidden; flex: =
1 1 0%; max-width: 170px; min-width: 60px; margin-right: 10px; }

.monaco-aria-container { position: absolute; left: -999em; }

.custom-checkbox { margin-left: 2px; float: left; cursor: pointer; overflow=
: hidden; opacity: 0.7; width: 20px; height: 20px; border: 1px solid transp=
arent; padding: 1px; box-sizing: border-box; user-select: none; }

.custom-checkbox.checked, .custom-checkbox:hover { opacity: 1; }

.hc-black .custom-checkbox, .hc-black .custom-checkbox:hover { background: =
none; }

.context-view { position: absolute; z-index: 8; }

.monaco-count-badge { padding: 0.2em 0.5em; border-radius: 1em; font-size: =
85%; font-weight: 400; text-align: center; display: inline; }

.monaco-findInput { position: relative; }

.monaco-findInput .monaco-inputbox { font-size: 13px; width: 100%; height: =
25px; }

.fl::after { clear: both; content: ""; display: block; visibility: hidden; =
height: 0px; }

.monaco-findInput > .controls { position: absolute; top: 3px; right: 2px; }

.vs .monaco-findInput.disabled { background-color: rgb(225, 225, 225); }

.vs-dark .monaco-findInput.disabled { background-color: rgb(51, 51, 51); }

.monaco-findInput.highlight-0 .controls { animation: 0.1s linear 0s 1 norma=
l none running monaco-findInput-highlight-0; }

.monaco-findInput.highlight-1 .controls { animation: 0.1s linear 0s 1 norma=
l none running monaco-findInput-highlight-1; }

.hc-black .monaco-findInput.highlight-0 .controls, .vs-dark .monaco-findInp=
ut.highlight-0 .controls { animation: 0.1s linear 0s 1 normal none running =
monaco-findInput-highlight-dark-0; }

.hc-black .monaco-findInput.highlight-1 .controls, .vs-dark .monaco-findInp=
ut.highlight-1 .controls { animation: 0.1s linear 0s 1 normal none running =
monaco-findInput-highlight-dark-1; }

@keyframes monaco-findInput-highlight-0 {=20
  0% { background: rgba(253, 255, 0, 0.8); }
  100% { background: transparent; }
}

@keyframes monaco-findInput-highlight-1 {=20
  0% { background: rgba(253, 255, 0, 0.8); }
  99% { background: transparent; }
}

@keyframes monaco-findInput-highlight-dark-0 {=20
  0% { background: rgba(255, 255, 255, 0.44); }
  100% { background: transparent; }
}

@keyframes monaco-findInput-highlight-dark-1 {=20
  0% { background: rgba(255, 255, 255, 0.44); }
  99% { background: transparent; }
}

.vs .custom-checkbox.monaco-case-sensitive { background: url("data:image/sv=
g+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPS=
IxNiIgaGVpZ2h0PSIxNiI+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4uc3Qwe29wYWNpdHk6MDtma=
WxsOiNGNkY2RjY7fSAuc3Qxe2ZpbGw6I0Y2RjZGNjt9IC5zdDJ7ZmlsbDojNDI0MjQyO308L3N0=
eWxlPjxnIGlkPSJvdXRsaW5lIj48cmVjdCBjbGFzcz0ic3QwIiB3aWR0aD0iMTYiIGhlaWdodD0=
iMTYiLz48cGF0aCBjbGFzcz0ic3QxIiBkPSJNMTQuMTc2IDUuNTkyYy0uNTU1LS42LTEuMzM2LS=
45MDQtMi4zMjItLjkwNC0uMjU4IDAtLjUyMS4wMjQtLjc4NC4wNzItLjI0Ni4wNDQtLjQ3OS4xM=
DEtLjcuMTY5LS4yMjguMDctLjQzMi4xNDctLjYxMy4yMjktLjIyLjA5OS0uMzg5LjE5Ni0uNTEy=
LjI4NGwtLjQxOS4yOTl2Mi43MDFjLS4wODYuMTA4LS4xNjIuMjIzLS4yMjkuMzQ0bC0yLjQ1LTY=
uMzU0aC0yLjM5NGwtMy43NTMgOS44MDR2LjU5OGgzLjAyNWwuODM4LTIuMzVoMi4xNjdsLjg5MS=
AyLjM1aDMuMjM3bC0uMDAxLS4wMDNjLjMwNS4wOTIuNjMzLjE1Ljk5My4xNS4zNDQgMCAuNjcxL=
S4wNDkuOTc4LS4xNDZoMi44NTN2LTQuOTAzYy0uMDAxLS45NzUtLjI3MS0xLjc2My0uODA1LTIu=
MzR6Ii8+PC9nPjxnIGlkPSJpY29uX3g1Rl9iZyI+PHBhdGggY2xhc3M9InN0MiIgZD0iTTcuNjE=
xIDExLjgzNGwtLjg5MS0yLjM1aC0zLjU2MmwtLjgzOCAyLjM1aC0xLjA5NWwzLjIxNy04LjQwMm=
gxLjAybDMuMjQgOC40MDJoLTEuMDkxem0tMi41MzEtNi44MTRsLS4wNDQtLjEzNS0uMDM4LS4xN=
TYtLjAyOS0uMTUyLS4wMjQtLjEyNmgtLjAyM2wtLjAyMS4xMjYtLjAzMi4xNTItLjAzOC4xNTYt=
LjA0NC4xMzUtMS4zMDcgMy41NzRoMi45MThsLTEuMzE4LTMuNTc0eiIvPjxwYXRoIGNsYXNzPSJ=
zdDIiIGQ9Ik0xMy4wMiAxMS44MzR2LS45MzhoLS4wMjNjLS4xOTkuMzUyLS40NTYuNjItLjc3MS=
44MDZzLS42NzMuMjc4LTEuMDc1LjI3OGMtLjMxMyAwLS41ODgtLjA0NS0uODI2LS4xMzVzLS40M=
zgtLjIxMi0uNTk4LS4zNjYtLjI4MS0uMzM4LS4zNjMtLjU1MS0uMTI0LS40NDItLjEyNC0uNjg4=
YzAtLjI2Mi4wMzktLjUwMi4xMTctLjcyMXMuMTk4LS40MTIuMzYtLjU4LjM2Ny0uMzA4LjYxNS0=
uNDE5LjU0NC0uMTkuODg4LS4yMzdsMS44MTEtLjI1MmMwLS4yNzMtLjAyOS0uNTA3LS4wODgtLj=
dzLS4xNDMtLjM1MS0uMjUyLS40NzItLjI0MS0uMjEtLjM5Ni0uMjY3LS4zMjUtLjA4NS0uNTEzL=
S4wODVjLS4zNjMgMC0uNzE0LjA2NC0xLjA1Mi4xOTNzLS42MzguMzEtLjkwNC41NHYtLjk4NGMu=
MDgyLS4wNTkuMTk2LS4xMjEuMzQzLS4xODhzLjMxMi0uMTI4LjQ5NS0uMTg1LjM3OC0uMTA0LjU=
4My0uMTQxLjQwNy0uMDU2LjYwNi0uMDU2Yy42OTkgMCAxLjIyOS4xOTQgMS41ODguNTgzcy41Mz=
kuOTQyLjUzOSAxLjY2MXYzLjkwMmgtLjk2em0tMS40NTQtMi44M2MtLjI3My4wMzUtLjQ5OC4wO=
DUtLjY3NC4xNDlzLS4zMTMuMTQ0LS40MS4yMzctLjE2NS4yMDUtLjIwMi4zMzQtLjA1NS4yNzYt=
LjA1NS40NGMwIC4xNDEuMDI1LjI3MS4wNzYuMzkzcy4xMjQuMjI3LjIyLjMxNi4yMTUuMTYuMzU=
3LjIxMS4zMDguMDc2LjQ5NS4wNzZjLjI0MiAwIC40NjUtLjA0NS42NjgtLjEzNXMuMzc4LS4yMT=
QuNTI0LS4zNzIuMjYxLS4zNDQuMzQzLS41NTcuMTIzLS40NDIuMTIzLS42ODh2LS42MDlsLTEuN=
DY1LjIwNXoiLz48L2c+PC9zdmc+") 50% center no-repeat; }

.hc-black .custom-checkbox.monaco-case-sensitive, .hc-black .custom-checkbo=
x.monaco-case-sensitive:hover, .vs-dark .custom-checkbox.monaco-case-sensit=
ive { background: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3=
d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PHN0eWxlIHR5cGU9I=
nRleHQvY3NzIj4uc3Qwe29wYWNpdHk6MDtmaWxsOiMyNjI2MjY7fSAuc3Qxe2ZpbGw6IzI2MjYy=
Njt9IC5zdDJ7ZmlsbDojQzVDNUM1O308L3N0eWxlPjxnIGlkPSJvdXRsaW5lIj48cmVjdCBjbGF=
zcz0ic3QwIiB3aWR0aD0iMTYiIGhlaWdodD0iMTYiLz48cGF0aCBjbGFzcz0ic3QxIiBkPSJNMT=
QuMTc2IDUuNTkyYy0uNTU1LS42LTEuMzM2LS45MDQtMi4zMjItLjkwNC0uMjU4IDAtLjUyMS4wM=
jQtLjc4NC4wNzItLjI0Ni4wNDQtLjQ3OS4xMDEtLjcuMTY5LS4yMjguMDctLjQzMi4xNDctLjYx=
My4yMjktLjIyLjA5OS0uMzg5LjE5Ni0uNTEyLjI4NGwtLjQxOS4yOTl2Mi43MDFjLS4wODYuMTA=
4LS4xNjIuMjIzLS4yMjkuMzQ0bC0yLjQ1LTYuMzU0aC0yLjM5NGwtMy43NTMgOS44MDR2LjU5OG=
gzLjAyNWwuODM4LTIuMzVoMi4xNjdsLjg5MSAyLjM1aDMuMjM3bC0uMDAxLS4wMDNjLjMwNS4wO=
TIuNjMzLjE1Ljk5My4xNS4zNDQgMCAuNjcxLS4wNDkuOTc4LS4xNDZoMi44NTN2LTQuOTAzYy0u=
MDAxLS45NzUtLjI3MS0xLjc2My0uODA1LTIuMzR6Ii8+PC9nPjxnIGlkPSJpY29uX3g1Rl9iZyI=
+PHBhdGggY2xhc3M9InN0MiIgZD0iTTcuNjExIDExLjgzNGwtLjg5MS0yLjM1aC0zLjU2MmwtLj=
gzOCAyLjM1aC0xLjA5NWwzLjIxNy04LjQwMmgxLjAybDMuMjQgOC40MDJoLTEuMDkxem0tMi41M=
zEtNi44MTRsLS4wNDQtLjEzNS0uMDM4LS4xNTYtLjAyOS0uMTUyLS4wMjQtLjEyNmgtLjAyM2wt=
LjAyMS4xMjYtLjAzMi4xNTItLjAzOC4xNTYtLjA0NC4xMzUtMS4zMDcgMy41NzRoMi45MThsLTE=
uMzE4LTMuNTc0eiIvPjxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik0xMy4wMiAxMS44MzR2LS45MzhoLS=
4wMjNjLS4xOTkuMzUyLS40NTYuNjItLjc3MS44MDZzLS42NzMuMjc4LTEuMDc1LjI3OGMtLjMxM=
yAwLS41ODgtLjA0NS0uODI2LS4xMzVzLS40MzgtLjIxMi0uNTk4LS4zNjYtLjI4MS0uMzM4LS4z=
NjMtLjU1MS0uMTI0LS40NDItLjEyNC0uNjg4YzAtLjI2Mi4wMzktLjUwMi4xMTctLjcyMXMuMTk=
4LS40MTIuMzYtLjU4LjM2Ny0uMzA4LjYxNS0uNDE5LjU0NC0uMTkuODg4LS4yMzdsMS44MTEtLj=
I1MmMwLS4yNzMtLjAyOS0uNTA3LS4wODgtLjdzLS4xNDMtLjM1MS0uMjUyLS40NzItLjI0MS0uM=
jEtLjM5Ni0uMjY3LS4zMjUtLjA4NS0uNTEzLS4wODVjLS4zNjMgMC0uNzE0LjA2NC0xLjA1Mi4x=
OTNzLS42MzguMzEtLjkwNC41NHYtLjk4NGMuMDgyLS4wNTkuMTk2LS4xMjEuMzQzLS4xODhzLjM=
xMi0uMTI4LjQ5NS0uMTg1LjM3OC0uMTA0LjU4My0uMTQxLjQwNy0uMDU2LjYwNi0uMDU2Yy42OT=
kgMCAxLjIyOS4xOTQgMS41ODguNTgzcy41MzkuOTQyLjUzOSAxLjY2MXYzLjkwMmgtLjk2em0tM=
S40NTQtMi44M2MtLjI3My4wMzUtLjQ5OC4wODUtLjY3NC4xNDlzLS4zMTMuMTQ0LS40MS4yMzct=
LjE2NS4yMDUtLjIwMi4zMzQtLjA1NS4yNzYtLjA1NS40NGMwIC4xNDEuMDI1LjI3MS4wNzYuMzk=
zcy4xMjQuMjI3LjIyLjMxNi4yMTUuMTYuMzU3LjIxMS4zMDguMDc2LjQ5NS4wNzZjLjI0MiAwIC=
40NjUtLjA0NS42NjgtLjEzNXMuMzc4LS4yMTQuNTI0LS4zNzIuMjYxLS4zNDQuMzQzLS41NTcuM=
TIzLS40NDIuMTIzLS42ODh2LS42MDlsLTEuNDY1LjIwNXoiLz48L2c+PC9zdmc+") 50% cente=
r no-repeat; }

.vs .custom-checkbox.monaco-whole-word { background: url("data:image/svg+xm=
l;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNi=
IgaGVpZ2h0PSIxNiI+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4uc3Qwe29wYWNpdHk6MDtmaWxsO=
iNGNkY2RjY7fSAuc3Qxe2ZpbGw6I0Y2RjZGNjt9IC5zdDJ7ZmlsbDojNDI0MjQyO308L3N0eWxl=
PjxnIGlkPSJvdXRsaW5lIj48cmVjdCBjbGFzcz0ic3QwIiB3aWR0aD0iMTYiIGhlaWdodD0iMTY=
iLz48cGF0aCBjbGFzcz0ic3QxIiBkPSJNMTYgNC4wMjJ2LTMuMDIyaC0xNi4wMTR2My4wMjJoMy=
4wNDZsLTMuMDQzIDcuOTQ1aC0uMDA0di4wMWwuMDE1IDEuMDIzaC0uMDE0djEuOTkxaDE2LjAxN=
HYtMy4wMjNoLTF2LTcuOTQ2aDF6bS01LjkxNCA1LjMwMWMwIC4yMzMtLjAyMy40NDEtLjA2Ni41=
OTUtLjA0Ny4xNjQtLjA5OS4yNDctLjEyNy4yODRsLS4wNzguMDY5LS4xNTEuMDI2LS4xMTUtLjA=
xNy0uMTM5LS4xMzdjLS4wMzEtLjA3OC0uMTEyLS4zMzItLjExMi0uNTY2IDAtLjI1NC4wOTEtLj=
U2MS4xMjYtLjY1NmwuMDY5LS4xNDEuMTA5LS4wODIuMTc4LS4wMjdjLjA3NyAwIC4xMTcuMDE0L=
jE3Ny4wNTZsLjA4Ny4xNzkuMDUxLjIzNy0uMDA5LjE4em0tMy42OTUtNS4zMDF2Mi44OTNsLTEu=
MTE2LTIuODkzaDEuMTE2em0tMy4wMjYgNy4wMmgxLjU3M2wuMzUxLjkyNmgtMi4yNTRsLjMzLS4=
5MjZ6bTguNjM1LTQuMzU0Yy0uMjA2LS4yLS40MzEtLjM4LS42OTUtLjUxMi0uMzk2LS4xOTgtLj=
g1My0uMjk4LTEuMzU1LS4yOTgtLjIxNSAwLS40MjMuMDItLjYyMS4wNTh2LTEuOTE0aDIuNjcxd=
jIuNjY2eiIvPjwvZz48ZyBpZD0iaWNvbl94NUZfYmciPjxyZWN0IHg9IjEzIiB5PSI0IiBjbGFz=
cz0ic3QyIiB3aWR0aD0iMSIgaGVpZ2h0PSI4Ii8+PHBhdGggY2xhc3M9InN0MiIgZD0iTTExLjI=
yNSA4LjM4N2MtLjA3OC0uMjk5LS4xOTktLjU2Mi0uMzYtLjc4NnMtLjM2NS0uNDAxLS42MDktLj=
UzLS41MzQtLjE5My0uODY2LS4xOTNjLS4xOTggMC0uMzguMDI0LS41NDcuMDczLS4xNjUuMDQ5L=
S4zMTYuMTE3LS40NTMuMjA1LS4xMzYuMDg4LS4yNTcuMTk0LS4zNjUuMzE4bC0uMTc5LjI1OHYt=
My4xNTRoLS44OTN2Ny40MjJoLjg5M3YtLjU3NWwuMTI2LjE3NWMuMDg3LjEwMi4xODkuMTkuMzA=
0LjI2OS4xMTcuMDc4LjI0OS4xNC4zOTguMTg2LjE0OS4wNDYuMzE0LjA2OC40OTguMDY4LjM1My=
AwIC42NjYtLjA3MS45MzctLjIxMi4yNzItLjE0My40OTktLjMzOC42ODItLjU4Ni4xODMtLjI1L=
jMyMS0uNTQzLjQxNC0uODc5LjA5My0uMzM4LjE0LS43MDMuMTQtMS4wOTctLjAwMS0uMzQyLS4w=
NC0uNjYzLS4xMi0uOTYyem0tMS40NzktLjYwN2MuMTUxLjA3MS4yODIuMTc2LjM5LjMxNC4xMDk=
uMTQuMTk0LjMxMy4yNTUuNTE3LjA1MS4xNzQuMDgyLjM3MS4wODkuNTg3bC0uMDA3LjEyNWMwIC=
4zMjctLjAzMy42Mi0uMS44NjktLjA2Ny4yNDYtLjE2MS40NTMtLjI3OC42MTQtLjExNy4xNjItL=
jI2LjI4NS0uNDIxLjM2Ni0uMzIyLjE2Mi0uNzYuMTY2LTEuMDY5LjAxNS0uMTUzLS4wNzUtLjI4=
Ni0uMTc1LS4zOTMtLjI5Ni0uMDg1LS4wOTYtLjE1Ni0uMjE2LS4yMTgtLjM2NyAwIDAtLjE3OS0=
uNDQ3LS4xNzktLjk0NyAwLS41LjE3OS0xLjAwMi4xNzktMS4wMDIuMDYyLS4xNzcuMTM2LS4zMT=
guMjI0LS40My4xMTQtLjE0My4yNTYtLjI1OS40MjQtLjM0NS4xNjgtLjA4Ni4zNjUtLjEyOS41O=
DctLjEyOS4xOSAwIC4zNjQuMDM3LjUxNy4xMDl6Ii8+PHJlY3QgeD0iLjk4NyIgeT0iMiIgY2xh=
c3M9InN0MiIgd2lkdGg9IjE0LjAxMyIgaGVpZ2h0PSIxLjAyMyIvPjxyZWN0IHg9Ii45ODciIHk=
9IjEyLjk2OCIgY2xhc3M9InN0MiIgd2lkdGg9IjE0LjAxMyIgaGVpZ2h0PSIxLjAyMyIvPjxwYX=
RoIGNsYXNzPSJzdDIiIGQ9Ik0xLjk5MSAxMi4wMzFsLjcyOC0yLjAzMWgyLjIxOWwuNzc4IDIuM=
DMxaDEuMDgybC0yLjQ4NS03LjE1OGgtLjk0MWwtMi40NDEgNy4wODYtLjAyNS4wNzJoMS4wODV6=
bTEuODI3LTUuNjA5aC4wMjJsLjkxNCAyLjc1M2gtMS44NDFsLjkwNS0yLjc1M3oiLz48L2c+PC9=
zdmc+") 50% center no-repeat; }

.hc-black .custom-checkbox.monaco-whole-word, .hc-black .custom-checkbox.mo=
naco-whole-word:hover, .vs-dark .custom-checkbox.monaco-whole-word { backgr=
ound: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcm=
cvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PHN0eWxlIHR5cGU9InRleHQvY3NzI=
j4uc3Qwe29wYWNpdHk6MDtmaWxsOiMyNjI2MjY7fSAuc3Qxe2ZpbGw6IzI2MjYyNjt9IC5zdDJ7=
ZmlsbDojQzVDNUM1O308L3N0eWxlPjxnIGlkPSJvdXRsaW5lIj48cmVjdCBjbGFzcz0ic3QwIiB=
3aWR0aD0iMTYiIGhlaWdodD0iMTYiLz48cGF0aCBjbGFzcz0ic3QxIiBkPSJNMTYgNC4wMjJ2LT=
MuMDIyaC0xNi4wMTR2My4wMjJoMy4wNDZsLTMuMDQzIDcuOTQ1aC0uMDA0di4wMWwuMDE1IDEuM=
DIzaC0uMDE0djEuOTkxaDE2LjAxNHYtMy4wMjNoLTF2LTcuOTQ2aDF6bS01LjkxNCA1LjMwMWMw=
IC4yMzMtLjAyMy40NDEtLjA2Ni41OTUtLjA0Ny4xNjQtLjA5OS4yNDctLjEyNy4yODRsLS4wNzg=
uMDY5LS4xNTEuMDI2LS4xMTUtLjAxNy0uMTM5LS4xMzdjLS4wMzEtLjA3OC0uMTEyLS4zMzItLj=
ExMi0uNTY2IDAtLjI1NC4wOTEtLjU2MS4xMjYtLjY1NmwuMDY5LS4xNDEuMTA5LS4wODIuMTc4L=
S4wMjdjLjA3NyAwIC4xMTcuMDE0LjE3Ny4wNTZsLjA4Ny4xNzkuMDUxLjIzNy0uMDA5LjE4em0t=
My42OTUtNS4zMDF2Mi44OTNsLTEuMTE2LTIuODkzaDEuMTE2em0tMy4wMjYgNy4wMmgxLjU3M2w=
uMzUxLjkyNmgtMi4yNTRsLjMzLS45MjZ6bTguNjM1LTQuMzU0Yy0uMjA2LS4yLS40MzEtLjM4LS=
42OTUtLjUxMi0uMzk2LS4xOTgtLjg1My0uMjk4LTEuMzU1LS4yOTgtLjIxNSAwLS40MjMuMDItL=
jYyMS4wNTh2LTEuOTE0aDIuNjcxdjIuNjY2eiIvPjwvZz48ZyBpZD0iaWNvbl94NUZfYmciPjxy=
ZWN0IHg9IjEzIiB5PSI0IiBjbGFzcz0ic3QyIiB3aWR0aD0iMSIgaGVpZ2h0PSI4Ii8+PHBhdGg=
gY2xhc3M9InN0MiIgZD0iTTExLjIyNSA4LjM4N2MtLjA3OC0uMjk5LS4xOTktLjU2Mi0uMzYtLj=
c4NnMtLjM2NS0uNDAxLS42MDktLjUzLS41MzQtLjE5My0uODY2LS4xOTNjLS4xOTggMC0uMzguM=
DI0LS41NDcuMDczLS4xNjUuMDQ5LS4zMTYuMTE3LS40NTMuMjA1LS4xMzYuMDg4LS4yNTcuMTk0=
LS4zNjUuMzE4bC0uMTc5LjI1OHYtMy4xNTRoLS44OTN2Ny40MjJoLjg5M3YtLjU3NWwuMTI2LjE=
3NWMuMDg3LjEwMi4xODkuMTkuMzA0LjI2OS4xMTcuMDc4LjI0OS4xNC4zOTguMTg2LjE0OS4wND=
YuMzE0LjA2OC40OTguMDY4LjM1MyAwIC42NjYtLjA3MS45MzctLjIxMi4yNzItLjE0My40OTktL=
jMzOC42ODItLjU4Ni4xODMtLjI1LjMyMS0uNTQzLjQxNC0uODc5LjA5My0uMzM4LjE0LS43MDMu=
MTQtMS4wOTctLjAwMS0uMzQyLS4wNC0uNjYzLS4xMi0uOTYyem0tMS40NzktLjYwN2MuMTUxLjA=
3MS4yODIuMTc2LjM5LjMxNC4xMDkuMTQuMTk0LjMxMy4yNTUuNTE3LjA1MS4xNzQuMDgyLjM3MS=
4wODkuNTg3bC0uMDA3LjEyNWMwIC4zMjctLjAzMy42Mi0uMS44NjktLjA2Ny4yNDYtLjE2MS40N=
TMtLjI3OC42MTQtLjExNy4xNjItLjI2LjI4NS0uNDIxLjM2Ni0uMzIyLjE2Mi0uNzYuMTY2LTEu=
MDY5LjAxNS0uMTUzLS4wNzUtLjI4Ni0uMTc1LS4zOTMtLjI5Ni0uMDg1LS4wOTYtLjE1Ni0uMjE=
2LS4yMTgtLjM2NyAwIDAtLjE3OS0uNDQ3LS4xNzktLjk0NyAwLS41LjE3OS0xLjAwMi4xNzktMS=
4wMDIuMDYyLS4xNzcuMTM2LS4zMTguMjI0LS40My4xMTQtLjE0My4yNTYtLjI1OS40MjQtLjM0N=
S4xNjgtLjA4Ni4zNjUtLjEyOS41ODctLjEyOS4xOSAwIC4zNjQuMDM3LjUxNy4xMDl6Ii8+PHJl=
Y3QgeD0iLjk4NyIgeT0iMiIgY2xhc3M9InN0MiIgd2lkdGg9IjE0LjAxMyIgaGVpZ2h0PSIxLjA=
yMyIvPjxyZWN0IHg9Ii45ODciIHk9IjEyLjk2OCIgY2xhc3M9InN0MiIgd2lkdGg9IjE0LjAxMy=
IgaGVpZ2h0PSIxLjAyMyIvPjxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik0xLjk5MSAxMi4wMzFsLjcyO=
C0yLjAzMWgyLjIxOWwuNzc4IDIuMDMxaDEuMDgybC0yLjQ4NS03LjE1OGgtLjk0MWwtMi40NDEg=
Ny4wODYtLjAyNS4wNzJoMS4wODV6bTEuODI3LTUuNjA5aC4wMjJsLjkxNCAyLjc1M2gtMS44NDF=
sLjkwNS0yLjc1M3oiLz48L2c+PC9zdmc+") 50% center no-repeat; }

.vs .custom-checkbox.monaco-regex { background: url("data:image/svg+xml;bas=
e64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGV=
pZ2h0PSIxNiI+PHBvbHlnb24gZmlsbD0iI0Y2RjZGNiIgcG9pbnRzPSIxMy42NCw3LjM5NiAxMi=
4xNjksMi44OTggMTAuNzA2LDMuNzYxIDExLjA4NywyIDYuNTU3LDIgNi45MzYsMy43NjIgNS40N=
zMsMi44OTggNCw3LjM5NiA1LjY4Miw3LjU1NCA0LjUxMyw4LjU2MSA1LjAxMyw5IDIsOSAyLDE0=
IDcsMTQgNywxMC43NDcgNy45NzgsMTEuNjA2IDguODIsOS43MjUgOS42NjEsMTEuNjAyIDEzLjE=
0NCw4LjU2MiAxMS45NjgsNy41NTQiLz48ZyBmaWxsPSIjNDI0MjQyIj48cGF0aCBkPSJNMTIuMz=
AxIDYuNTE4bC0yLjc3Mi4yNjIgMi4wODYgMS43ODgtMS41OTQgMS4zOTItMS4yMDEtMi42ODItM=
S4yMDEgMi42ODItMS41ODMtMS4zOTIgMi4wNzUtMS43ODgtMi43NzEtLjI2Mi42OTYtMi4xMjYg=
Mi4zNTggMS4zOTItLjU5OS0yLjc4NGgyLjA1M2wtLjYwMiAyLjc4MyAyLjM1OS0xLjM5Mi42OTY=
gMi4xMjd6Ii8+PHJlY3QgeD0iMyIgeT0iMTAiIHdpZHRoPSIzIiBoZWlnaHQ9IjMiLz48L2c+PC=
9zdmc+") 50% center no-repeat; }

.hc-black .custom-checkbox.monaco-regex, .hc-black .custom-checkbox.monaco-=
regex:hover, .vs-dark .custom-checkbox.monaco-regex { background: url("data=
:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciI=
HdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PHBvbHlnb24gZmlsbD0iIzJkMmQzMCIgcG9pbnRzPSIx=
My42NCw3LjM5NiAxMi4xNjksMi44OTggMTAuNzA2LDMuNzYxIDExLjA4NywyIDYuNTU3LDIgNi4=
5MzYsMy43NjIgNS40NzMsMi44OTggNCw3LjM5NiA1LjY4Miw3LjU1NCA0LjUxMyw4LjU2MSA1Lj=
AxMyw5IDIsOSAyLDE0IDcsMTQgNywxMC43NDcgNy45NzgsMTEuNjA2IDguODIsOS43MjUgOS42N=
jEsMTEuNjAyIDEzLjE0NCw4LjU2MiAxMS45NjgsNy41NTQiLz48ZyBmaWxsPSIjQzVDNUM1Ij48=
cGF0aCBkPSJNMTIuMzAxIDYuNTE4bC0yLjc3Mi4yNjIgMi4wODYgMS43ODgtMS41OTQgMS4zOTI=
tMS4yMDEtMi42ODItMS4yMDEgMi42ODItMS41ODMtMS4zOTIgMi4wNzUtMS43ODgtMi43NzEtLj=
I2Mi42OTYtMi4xMjYgMi4zNTggMS4zOTItLjU5OS0yLjc4NGgyLjA1M2wtLjYwMiAyLjc4MyAyL=
jM1OS0xLjM5Mi42OTYgMi4xMjd6Ii8+PHJlY3QgeD0iMyIgeT0iMTAiIHdpZHRoPSIzIiBoZWln=
aHQ9IjMiLz48L2c+PC9zdmc+") 50% center no-repeat; }

.monaco-icon-label { display: inline-block; overflow: hidden; text-overflow=
: ellipsis; }

.monaco-icon-label::before { background-size: 16px; background-position: 0p=
x center; background-repeat: no-repeat; padding-right: 6px; width: 16px; he=
ight: 22px; display: inline-block; -webkit-font-smoothing: antialiased; ver=
tical-align: top; }

.monaco-icon-label > .label-name { color: inherit; white-space: pre; }

.monaco-icon-label > .label-description { opacity: 0.7; margin-left: 0.5em;=
 font-size: 0.9em; white-space: pre; }

.monaco-icon-label > .label-description.empty { margin-left: 0px; }

.monaco-icon-label.italic > .label-description, .monaco-icon-label.italic >=
 .label-name { font-style: italic; }

.monaco-inputbox { position: relative; display: block; padding: 0px; box-si=
zing: border-box; font-size: inherit; }

.monaco-inputbox.idle { border: 1px solid transparent; }

.monaco-inputbox > .wrapper > .input, .monaco-inputbox > .wrapper > .mirror=
 { padding: 4px; }

.monaco-inputbox > .wrapper { position: relative; width: 100%; height: 100%=
; }

.monaco-inputbox > .wrapper > .input { display: inline-block; box-sizing: b=
order-box; width: 100%; height: 100%; line-height: inherit; border: none; f=
ont-family: inherit; font-size: inherit; resize: none; color: inherit; }

.monaco-inputbox > .wrapper > input { text-overflow: ellipsis; }

.monaco-inputbox > .wrapper > textarea.input { display: block; overflow: hi=
dden; }

.monaco-inputbox > .wrapper > .mirror { position: absolute; display: inline=
-block; width: 100%; top: 0px; left: 0px; box-sizing: border-box; white-spa=
ce: pre-wrap; visibility: hidden; min-height: 26px; overflow-wrap: break-wo=
rd; }

.monaco-inputbox-container { text-align: right; }

.monaco-inputbox-container .monaco-inputbox-message { display: inline-block=
; overflow: hidden; text-align: left; width: 100%; box-sizing: border-box; =
padding: 0.4em; font-size: 12px; line-height: 17px; min-height: 34px; margi=
n-top: -1px; }

.monaco-inputbox .monaco-action-bar { position: absolute; right: 2px; top: =
4px; }

.monaco-inputbox .monaco-action-bar .action-item { margin-left: 2px; }

.monaco-inputbox .monaco-action-bar .action-item .icon { background-repeat:=
 no-repeat; width: 16px; height: 16px; }

.monaco-keybinding { display: flex; align-items: center; line-height: 10px;=
 }

.monaco-keybinding > .monaco-keybinding-key { display: inline-block; border=
-width: 1px; border-style: solid; border-color: rgba(204, 204, 204, 0.4) rg=
ba(204, 204, 204, 0.4) rgba(186, 186, 186, 0.4); border-image: initial; bor=
der-radius: 3px; box-shadow: rgba(186, 186, 186, 0.4) 0px -1px 0px inset; b=
ackground-color: rgba(222, 222, 222, 0.4); vertical-align: middle; color: r=
gb(85, 85, 85); font-size: 11px; padding: 3px 5px; }

.hc-black .monaco-keybinding > .monaco-keybinding-key, .vs-dark .monaco-key=
binding > .monaco-keybinding-key { background-color: rgba(128, 128, 128, 0.=
17); color: rgb(204, 204, 204); border-width: 1px; border-style: solid; bor=
der-color: rgba(51, 51, 51, 0.6) rgba(51, 51, 51, 0.6) rgba(68, 68, 68, 0.6=
); border-image: initial; box-shadow: rgba(68, 68, 68, 0.6) 0px -1px 0px in=
set; }

.monaco-keybinding > .monaco-keybinding-key-separator { display: inline-blo=
ck; }

.monaco-keybinding > .monaco-keybinding-key-chord-separator { width: 2px; }

.monaco-list { height: 100%; width: 100%; white-space: nowrap; user-select:=
 none; }

.monaco-list > .monaco-scrollable-element { height: 100%; }

.monaco-list-rows { position: relative; width: 100%; height: 100%; }

.monaco-list-row { position: absolute; box-sizing: border-box; cursor: poin=
ter; overflow: hidden; width: 100%; touch-action: none; }

.monaco-list-row.scrolling { display: none !important; }

.monaco-list.element-focused { outline: 0px !important; }

.monaco-menu .monaco-action-bar.vertical { margin-left: 0px; }

.monaco-menu .monaco-action-bar.vertical .actions-container { display: bloc=
k; }

.monaco-menu .monaco-action-bar.vertical .action-item { padding: 0px; trans=
form: none; display: flex; }

.monaco-menu .monaco-action-bar.vertical .action-item.active { transform: n=
one; }

.monaco-menu .monaco-action-bar.vertical .action-item.focused { background-=
color: rgb(228, 228, 228); }

.monaco-menu .monaco-action-bar.vertical .action-item:hover:not(.disabled) =
{ background-color: rgb(238, 238, 238); }

.monaco-menu .monaco-action-bar.vertical .action-label { flex: 1 1 auto; te=
xt-decoration: none; padding: 0.8em 1em; line-height: 1.1em; background: no=
ne; }

.monaco-menu .monaco-action-bar.vertical .keybinding { display: inline-bloc=
k; flex: 2 1 auto; padding: 0.8em 1em; line-height: 1.1em; font-size: 12px;=
 text-align: right; }

.monaco-menu .monaco-action-bar.vertical .action-item.disabled .keybinding =
{ opacity: 0.4; }

.monaco-menu .monaco-action-bar.vertical .action-label:not(.separator) { di=
splay: inline-block; box-sizing: border-box; margin: 0px; }

.monaco-menu .monaco-action-bar.vertical .action-label.separator { padding:=
 0.5em 0px 0px; margin-bottom: 0.5em; width: 100%; }

.monaco-menu .monaco-action-bar.vertical .action-label.separator.text { pad=
ding: 0.7em 1em 0.1em; font-weight: 700; opacity: 1; }

.monaco-menu .monaco-action-bar.vertical .action-label:hover { color: inher=
it; }

.context-view.monaco-menu-container { font-family: "Segoe WPC", "Segoe UI",=
 ".SFNSDisplay-Light", SFUIText-Light, HelveticaNeue-Light, sans-serif; out=
line: 0px; box-shadow: rgb(168, 168, 168) 0px 2px 8px; border: none; color:=
 rgb(100, 100, 101); background-color: rgb(255, 255, 255); animation: 83ms =
linear 0s 1 normal none running fadeIn; }

.context-view.monaco-menu-container :focus { outline: 0px; }

.vs-dark .monaco-menu .monaco-action-bar.vertical .action-item.focused { ba=
ckground-color: rgb(75, 76, 77); }

.vs-dark .monaco-menu .monaco-action-bar.vertical .action-item:hover:not(.d=
isabled) { background-color: rgb(58, 58, 58); }

.vs-dark .context-view.monaco-menu-container { box-shadow: rgb(0, 0, 0) 0px=
 2px 8px; color: rgb(187, 187, 187); background-color: rgb(45, 47, 49); }

.hc-black .context-view.monaco-menu-container { border: 2px solid rgb(111, =
195, 223); color: rgb(255, 255, 255); background-color: rgb(12, 20, 31); bo=
x-shadow: none; }

.hc-black .monaco-menu .monaco-action-bar.vertical .action-item.focused { b=
ackground: none; border: 1px dotted rgb(243, 133, 24); }

.hc-black .monaco-menu .monaco-action-bar.vertical .action-item:hover:not(.=
disabled) { background: none; border: 1px dashed rgb(243, 133, 24); }

.progress-container { width: 100%; height: 5px; }

.progress-container .progress-bit { width: 2%; height: 5px; position: absol=
ute; left: 0px; display: none; }

.progress-container.active .progress-bit { display: inherit; }

.progress-container.discrete .progress-bit { left: 0px; transition: width 0=
.1s linear 0s; }

.progress-container.discrete.done .progress-bit { width: 100%; }

.progress-container.infinite .progress-bit { animation-name: progress; anim=
ation-duration: 4s; animation-iteration-count: infinite; animation-timing-f=
unction: linear; }

@keyframes progress {=20
  0% { left: 0px; width: 2%; }
  50% { left: 50%; width: 5%; }
  100% { left: 98%; width: 2%; }
}

@-webkit-keyframes progress {=20
  0% { left: 0px; width: 2%; }
  50% { left: 50%; width: 5%; }
  100% { left: 98%; width: 2%; }
}

.monaco-sash { position: absolute; z-index: 6; touch-action: none; }

.monaco-sash.vertical { cursor: ew-resize; height: 100%; top: 0px; }

.monaco-sash.horizontal { cursor: ns-resize; width: 100%; left: 0px; }

.monaco-sash.disabled { cursor: default !important; }

.vertical-cursor-container { cursor: ew-resize; }

.horizontal-cursor-container { cursor: ns-resize; }

.monaco-sash.mac.vertical, .vertical-cursor-container-mac { cursor: col-res=
ize; }

.horizontal-cursor-container-mac, .monaco-sash.mac.horizontal { cursor: row=
-resize; }

.monaco-scrollable-element > .scrollbar > .up-arrow { background: url("data=
:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTEgMTEiIHhtbG5zPSJodHRwOi8vd=
3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0ibTkuNDgwNDYsOC45NjE1bDEuMjYsLTEuMjZs=
LTUuMDQsLTUuMDRsLTUuNDYsNS4wNGwxLjI2LDEuMjZsNC4yLC0zLjc4bDMuNzgsMy43OHoiIGZ=
pbGw9IiM0MjQyNDIiLz48L3N2Zz4=3D"); cursor: pointer; }

.monaco-scrollable-element > .scrollbar > .down-arrow { background: url("da=
ta:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmc=
iIHZpZXdCb3g9IjAgMCAxMSAxMSI+PHBhdGggdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCA1LjQ5MD=
Q1OTkxODk3NTgzLDUuODExNTAwMDcyNDc5MjQ4KSIgZmlsbD0iIzQyNDI0MiIgZD0ibTkuNDgwN=
DYsOC45NjE1bDEuMjYsLTEuMjZsLTUuMDQsLTUuMDRsLTUuNDYsNS4wNGwxLjI2LDEuMjZsNC4y=
LC0zLjc4bDMuNzgsMy43OHoiLz48L3N2Zz4=3D"); cursor: pointer; }

.monaco-scrollable-element > .scrollbar > .left-arrow { background: url("da=
ta:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmc=
iIHZpZXdCb3g9IjAgMCAxMSAxMSI+PHBhdGggdHJhbnNmb3JtPSJyb3RhdGUoLTkwIDUuNDkwND=
U5OTE4OTc1ODMxLDUuNDMxMzgyMTc5MjYwMjU0KSIgZmlsbD0iIzQyNDI0MiIgZD0ibTkuNDgwN=
DYsOC41ODEzOGwxLjI2LC0xLjI2bC01LjA0LC01LjA0bC01LjQ2LDUuMDRsMS4yNiwxLjI2bDQu=
MiwtMy43OGwzLjc4LDMuNzh6Ii8+PC9zdmc+"); cursor: pointer; }

.monaco-scrollable-element > .scrollbar > .right-arrow { background: url("d=
ata:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTEgMTEiIHhtbG5zPSJodHRwOi=
8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggdHJhbnNmb3JtPSJyb3RhdGUoOTAgNS42MTcxN=
jUwODg2NTM1NjQ1LDUuNTU4MDg5NzMzMTIzNzgpICIgZmlsbD0iIzQyNDI0MiIgZD0ibTkuNjA3=
MTcsOC43MDgwOWwxLjI2LC0xLjI2bC01LjA0LC01LjA0bC01LjQ2LDUuMDRsMS4yNiwxLjI2bDQ=
uMiwtMy43OGwzLjc4LDMuNzh6Ii8+PC9zdmc+"); cursor: pointer; }

.hc-black .monaco-scrollable-element > .scrollbar > .up-arrow, .vs-dark .mo=
naco-scrollable-element > .scrollbar > .up-arrow { background: url("data:im=
age/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTEgMTEiIHhtbG5zPSJodHRwOi8vd3d3=
LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0ibTkuNDgwNDYsOC45NjE1bDEuMjYsLTEuMjZsLTU=
uMDQsLTUuMDRsLTUuNDYsNS4wNGwxLjI2LDEuMjZsNC4yLC0zLjc4bDMuNzgsMy43OHoiIGZpbG=
w9IiNFOEU4RTgiLz48L3N2Zz4=3D"); }

.hc-black .monaco-scrollable-element > .scrollbar > .down-arrow, .vs-dark .=
monaco-scrollable-element > .scrollbar > .down-arrow { background: url("dat=
a:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmci=
IHZpZXdCb3g9IjAgMCAxMSAxMSI+PHBhdGggdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCA1LjQ5MDQ=
1OTkxODk3NTgzLDUuODExNTAwMDcyNDc5MjQ4KSIgZmlsbD0iI0U4RThFOCIgZD0ibTkuNDgwND=
YsOC45NjE1bDEuMjYsLTEuMjZsLTUuMDQsLTUuMDRsLTUuNDYsNS4wNGwxLjI2LDEuMjZsNC4yL=
C0zLjc4bDMuNzgsMy43OHoiLz48L3N2Zz4=3D"); }

.hc-black .monaco-scrollable-element > .scrollbar > .left-arrow, .vs-dark .=
monaco-scrollable-element > .scrollbar > .left-arrow { background: url("dat=
a:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmci=
IHZpZXdCb3g9IjAgMCAxMSAxMSI+PHBhdGggdHJhbnNmb3JtPSJyb3RhdGUoLTkwIDUuNDkwNDU=
5OTE4OTc1ODMxLDUuNDMxMzgyMTc5MjYwMjU0KSIgZmlsbD0iI0U4RThFOCIgZD0ibTkuNDgwND=
YsOC41ODEzOGwxLjI2LC0xLjI2bC01LjA0LC01LjA0bC01LjQ2LDUuMDRsMS4yNiwxLjI2bDQuM=
iwtMy43OGwzLjc4LDMuNzh6Ii8+PC9zdmc+"); }

.hc-black .monaco-scrollable-element > .scrollbar > .right-arrow, .vs-dark =
.monaco-scrollable-element > .scrollbar > .right-arrow { background: url("d=
ata:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTEgMTEiIHhtbG5zPSJodHRwOi=
8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggdHJhbnNmb3JtPSJyb3RhdGUoOTAgNS42MTcxN=
jUwODg2NTM1NjQ1LDUuNTU4MDg5NzMzMTIzNzgpICIgZmlsbD0iI0U4RThFOCIgZD0ibTkuNjA3=
MTcsOC43MDgwOWwxLjI2LC0xLjI2bC01LjA0LC01LjA0bC01LjQ2LDUuMDRsMS4yNiwxLjI2bDQ=
uMiwtMy43OGwzLjc4LDMuNzh6Ii8+PC9zdmc+"); }

.monaco-scrollable-element > .visible { opacity: 1; background: transparent=
; transition: opacity 0.1s linear 0s; }

.monaco-scrollable-element > .invisible { opacity: 0; }

.monaco-scrollable-element > .invisible.fade { transition: opacity 0.8s lin=
ear 0s; }

.monaco-scrollable-element > .shadow { position: absolute; display: none; }

.monaco-scrollable-element > .shadow.top { display: block; top: 0px; left: =
3px; height: 3px; width: 100%; box-shadow: rgb(221, 221, 221) 0px 6px 6px -=
6px inset; }

.monaco-scrollable-element > .shadow.left { display: block; top: 3px; left:=
 0px; height: 100%; width: 3px; box-shadow: rgb(221, 221, 221) 6px 0px 6px =
-6px inset; }

.monaco-scrollable-element > .shadow.top-left-corner { display: block; top:=
 0px; left: 0px; height: 3px; width: 3px; }

.monaco-scrollable-element > .shadow.top.left { box-shadow: rgb(221, 221, 2=
21) 6px 6px 6px -6px inset; }

.vs .monaco-scrollable-element > .scrollbar > .slider { background: rgba(99=
, 99, 99, 0.4); }

.vs-dark .monaco-scrollable-element > .scrollbar > .slider { background: rg=
ba(120, 120, 120, 0.4); }

.hc-black .monaco-scrollable-element > .scrollbar > .slider { background: r=
gba(111, 195, 223, 0.6); }

.monaco-scrollable-element > .scrollbar > .slider:hover { background: rgba(=
99, 99, 99, 0.7); }

.hc-black .monaco-scrollable-element > .scrollbar > .slider:hover { backgro=
und: rgba(111, 195, 223, 0.8); }

.monaco-scrollable-element > .scrollbar > .slider.active { background: rgba=
(0, 0, 0, 0.6); }

.vs-dark .monaco-scrollable-element > .scrollbar > .slider.active { backgro=
und: rgba(191, 191, 191, 0.4); }

.hc-black .monaco-scrollable-element > .scrollbar > .slider.active { backgr=
ound: rgb(111, 195, 223); }

.vs-dark .monaco-scrollable-element .shadow.top { box-shadow: none; }

.vs-dark .monaco-scrollable-element .shadow.left { box-shadow: rgb(0, 0, 0)=
 6px 0px 6px -6px inset; }

.vs-dark .monaco-scrollable-element .shadow.top.left { box-shadow: rgb(0, 0=
, 0) 6px 6px 6px -6px inset; }

.hc-black .monaco-scrollable-element .shadow.left, .hc-black .monaco-scroll=
able-element .shadow.top, .hc-black .monaco-scrollable-element .shadow.top.=
left { box-shadow: none; }

.monaco-workbench .select-box { width: 100%; height: 20px; }

.quick-open-widget { position: absolute; width: 600px; z-index: 9; padding-=
bottom: 6px; left: 50%; margin-left: -300px; }

.quick-open-widget .progress-container { position: absolute; left: 0px; top=
: 38px; z-index: 1; height: 2px; }

.quick-open-widget .progress-container .progress-bit { height: 2px; }

.quick-open-widget .quick-open-input { width: 588px; border: none; margin: =
6px; }

.quick-open-widget .quick-open-input .monaco-inputbox { width: 100%; height=
: 25px; }

.quick-open-widget .quick-open-tree { line-height: 22px; }

.quick-open-widget .quick-open-tree .monaco-tree-row > .content > .sub-cont=
ent { overflow: hidden; }

.quick-open-widget.content-changing .quick-open-tree .monaco-scrollable-ele=
ment .slider { display: none; }

.quick-open-widget .quick-open-tree .quick-open-entry { overflow: hidden; t=
ext-overflow: ellipsis; display: flex; flex-direction: column; height: 100%=
; }

.quick-open-widget .quick-open-tree .quick-open-entry > .quick-open-row { d=
isplay: flex; align-items: center; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n { overflow: hidden; width: 16px; height: 16px; margin-right: 4px; display=
: inline-block; vertical-align: middle; flex-shrink: 0; }

.quick-open-widget .quick-open-tree .quick-open-entry .monaco-highlighted-l=
abel span { opacity: 1; }

.quick-open-widget .quick-open-tree .quick-open-entry-meta { opacity: 0.7; =
line-height: normal; }

.quick-open-widget .quick-open-tree .quick-open-entry-description { opacity=
: 0.7; margin-left: 0.5em; font-size: 0.9em; overflow: hidden; flex: 1 1 0%=
; text-overflow: ellipsis; }

.quick-open-widget .quick-open-tree .content.has-group-label .quick-open-en=
try-keybinding { margin-right: 8px; }

.quick-open-widget .quick-open-tree .quick-open-entry-keybinding .monaco-ke=
ybinding-key { vertical-align: text-bottom; }

.quick-open-widget .quick-open-tree .results-group { margin-right: 18px; }

.quick-open-widget .quick-open-tree .focused .monaco-tree-row.focused > .co=
ntent.has-actions > .results-group, .quick-open-widget .quick-open-tree .mo=
naco-tree-row.focused > .content.has-actions > .results-group, .quick-open-=
widget .quick-open-tree .monaco-tree-row:hover:not(.highlighted) > .content=
.has-actions > .results-group { margin-right: 0px; }

.quick-open-widget .quick-open-tree .results-group-separator { border-top-w=
idth: 1px; border-top-style: solid; box-sizing: border-box; margin-left: -1=
1px; padding-left: 11px; }

.monaco-tree .monaco-tree-row > .content.actions { position: relative; disp=
lay: flex; }

.monaco-tree .monaco-tree-row > .content.actions > .sub-content { flex: 1 1=
 0%; }

.monaco-tree .monaco-tree-row > .content.actions .action-item { margin: 0px=
; }

.monaco-tree .monaco-tree-row > .content.actions > .primary-action-bar { li=
ne-height: 22px; display: none; padding: 0px 0.8em 0px 0.4em; }

.monaco-tree .monaco-tree-row.focused > .content.has-actions > .primary-act=
ion-bar { width: 0px; display: block; }

.monaco-tree.focused .monaco-tree-row.focused > .content.has-actions > .pri=
mary-action-bar, .monaco-tree .monaco-tree-row:hover:not(.highlighted) > .c=
ontent.has-actions > .primary-action-bar, .monaco-tree .monaco-tree-row > .=
content.has-actions.more > .primary-action-bar { width: inherit; display: b=
lock; }

.monaco-tree .monaco-tree-row > .content.actions > .primary-action-bar .act=
ion-label { margin-right: 0.2em; margin-top: 4px; background-repeat: no-rep=
eat; width: 16px; height: 16px; }

.quick-open-widget .quick-open-tree .monaco-highlighted-label .highlight { =
font-weight: 700; }

.monaco-tree { height: 100%; width: 100%; white-space: nowrap; user-select:=
 none; position: relative; }

.monaco-tree > .monaco-scrollable-element { height: 100%; }

.monaco-tree > .monaco-scrollable-element > .monaco-tree-wrapper { height: =
100%; width: 100%; position: relative; }

.monaco-tree .monaco-tree-rows { position: absolute; width: 100%; height: 1=
00%; }

.monaco-tree .monaco-tree-rows > .monaco-tree-row { box-sizing: border-box;=
 cursor: pointer; overflow: hidden; width: 100%; touch-action: none; }

.monaco-tree .monaco-tree-rows > .monaco-tree-row > .content { position: re=
lative; height: 100%; }

.monaco-tree-drag-image { display: inline-block; padding: 1px 7px; border-r=
adius: 10px; font-size: 12px; position: absolute; }

.monaco-tree .monaco-tree-rows > .monaco-tree-row.scrolling { display: none=
; }

.monaco-tree .monaco-tree-rows.show-twisties > .monaco-tree-row.has-childre=
n > .content::before { content: " "; position: absolute; display: block; ba=
ckground: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My=
5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHBhdGggZmlsbD0iIzY0NjQ2NSIgZ=
D0iTTYgNHY4bDQtNC00LTR6bTEgMi40MTRMOC41ODYgOCA3IDkuNTg2VjYuNDE0eiIvPjwvc3Zn=
Pg=3D=3D") 50% 50% no-repeat; width: 16px; height: 100%; top: 0px; left: -1=
6px; }

.monaco-tree .monaco-tree-rows.show-twisties > .monaco-tree-row.expanded > =
.content::before { background-image: url("data:image/svg+xml;base64,PHN2ZyB=
4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PH=
BhdGggZmlsbD0iIzY0NjQ2NSIgZD0iTTExIDEwSDUuMzQ0TDExIDQuNDE0VjEweiIvPjwvc3ZnP=
g=3D=3D"); }

.monaco-tree .monaco-tree-rows > .monaco-tree-row.has-children.loading > .c=
ontent::before { background-image: url("data:image/svg+xml;base64,PD94bWwgd=
mVyc2lvbj0nMS4wJyBzdGFuZGFsb25lPSdubycgPz4KPHN2ZyB4bWxucz0naHR0cDovL3d3dy53=
My5vcmcvMjAwMC9zdmcnIHZlcnNpb249JzEuMScgd2lkdGg9JzEwcHgnIGhlaWdodD0nMTBweCc=
+Cgk8c3R5bGU+CiAgICBjaXJjbGUgewogICAgICBhbmltYXRpb246IGJhbGwgMC42cyBsaW5lYX=
IgaW5maW5pdGU7CiAgICB9CgogICAgY2lyY2xlOm50aC1jaGlsZCgyKSB7IGFuaW1hdGlvbi1kZ=
WxheTogMC4wNzVzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDMpIHsgYW5pbWF0aW9uLWRlbGF5=
OiAwLjE1czsgfQogICAgY2lyY2xlOm50aC1jaGlsZCg0KSB7IGFuaW1hdGlvbi1kZWxheTogMC4=
yMjVzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDUpIHsgYW5pbWF0aW9uLWRlbGF5OiAwLjNzOy=
B9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDYpIHsgYW5pbWF0aW9uLWRlbGF5OiAwLjM3NXM7IH0KI=
CAgIGNpcmNsZTpudGgtY2hpbGQoNykgeyBhbmltYXRpb24tZGVsYXk6IDAuNDVzOyB9CiAgICBj=
aXJjbGU6bnRoLWNoaWxkKDgpIHsgYW5pbWF0aW9uLWRlbGF5OiAwLjUyNXM7IH0KCiAgICBAa2V=
5ZnJhbWVzIGJhbGwgewogICAgICBmcm9tIHsgb3BhY2l0eTogMTsgfQogICAgICB0byB7IG9wYW=
NpdHk6IDAuMzsgfQogICAgfQoJPC9zdHlsZT4KCTxnPgoJCTxjaXJjbGUgY3g9JzUnIGN5PScxJ=
yByPScxJyBzdHlsZT0nb3BhY2l0eTowLjM7JyAvPgoJCTxjaXJjbGUgY3g9JzcuODI4NCcgY3k9=
JzIuMTcxNicgcj0nMScgc3R5bGU9J29wYWNpdHk6MC4zOycgLz4KCQk8Y2lyY2xlIGN4PSc5JyB=
jeT0nNScgcj0nMScgc3R5bGU9J29wYWNpdHk6MC4zOycgLz4KCQk8Y2lyY2xlIGN4PSc3LjgyOD=
QnIGN5PSc3LjgyODQnIHI9JzEnIHN0eWxlPSdvcGFjaXR5OjAuMzsnIC8+CgkJPGNpcmNsZSBje=
D0nNScgY3k9JzknIHI9JzEnIHN0eWxlPSdvcGFjaXR5OjAuMzsnIC8+CgkJPGNpcmNsZSBjeD0n=
Mi4xNzE2JyBjeT0nNy44Mjg0JyByPScxJyBzdHlsZT0nb3BhY2l0eTowLjM7JyAvPgoJCTxjaXJ=
jbGUgY3g9JzEnIGN5PSc1JyByPScxJyBzdHlsZT0nb3BhY2l0eTowLjM7JyAvPgoJCTxjaXJjbG=
UgY3g9JzIuMTcxNicgY3k9JzIuMTcxNicgcj0nMScgc3R5bGU9J29wYWNpdHk6MC4zOycgLz4KC=
TwvZz4KPC9zdmc+Cg=3D=3D"); }

.monaco-tree.highlighted .monaco-tree-rows > .monaco-tree-row:not(.highligh=
ted) { opacity: 0.3; }

.vs-dark .monaco-tree .monaco-tree-rows.show-twisties > .monaco-tree-row.ha=
s-children > .content::before { background-image: url("data:image/svg+xml;b=
ase64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgM=
CAxNiAxNiI+PHBhdGggZmlsbD0iI0U4RThFOCIgZD0iTTYgNHY4bDQtNC00LTR6bTEgMi40MTRM=
OC41ODYgOCA3IDkuNTg2VjYuNDE0eiIvPjwvc3ZnPg=3D=3D"); }

.vs-dark .monaco-tree .monaco-tree-rows.show-twisties > .monaco-tree-row.ex=
panded > .content::before { background-image: url("data:image/svg+xml;base6=
4,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxN=
iAxNiI+PHBhdGggZmlsbD0iI0U4RThFOCIgZD0iTTExIDEwSDUuMzQ0TDExIDQuNDE0VjEweiIv=
Pjwvc3ZnPg=3D=3D"); }

.vs-dark .monaco-tree .monaco-tree-rows > .monaco-tree-row.has-children.loa=
ding > .content::before { background-image: url("data:image/svg+xml;base64,=
PD94bWwgdmVyc2lvbj0nMS4wJyBzdGFuZGFsb25lPSdubycgPz4KPHN2ZyB4bWxucz0naHR0cDo=
vL3d3dy53My5vcmcvMjAwMC9zdmcnIHZlcnNpb249JzEuMScgd2lkdGg9JzEwcHgnIGhlaWdodD=
0nMTBweCc+Cgk8c3R5bGU+CiAgICBjaXJjbGUgewogICAgICBhbmltYXRpb246IGJhbGwgMC42c=
yBsaW5lYXIgaW5maW5pdGU7CiAgICB9CgogICAgY2lyY2xlOm50aC1jaGlsZCgyKSB7IGFuaW1h=
dGlvbi1kZWxheTogMC4wNzVzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDMpIHsgYW5pbWF0aW9=
uLWRlbGF5OiAwLjE1czsgfQogICAgY2lyY2xlOm50aC1jaGlsZCg0KSB7IGFuaW1hdGlvbi1kZW=
xheTogMC4yMjVzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDUpIHsgYW5pbWF0aW9uLWRlbGF5O=
iAwLjNzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDYpIHsgYW5pbWF0aW9uLWRlbGF5OiAwLjM3=
NXM7IH0KICAgIGNpcmNsZTpudGgtY2hpbGQoNykgeyBhbmltYXRpb24tZGVsYXk6IDAuNDVzOyB=
9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDgpIHsgYW5pbWF0aW9uLWRlbGF5OiAwLjUyNXM7IH0KCi=
AgICBAa2V5ZnJhbWVzIGJhbGwgewogICAgICBmcm9tIHsgb3BhY2l0eTogMTsgfQogICAgICB0b=
yB7IG9wYWNpdHk6IDAuMzsgfQogICAgfQoJPC9zdHlsZT4KCTxnIHN0eWxlPSJmaWxsOmdyZXk7=
Ij4KCQk8Y2lyY2xlIGN4PSc1JyBjeT0nMScgcj0nMScgc3R5bGU9J29wYWNpdHk6MC4zOycgLz4=
KCQk8Y2lyY2xlIGN4PSc3LjgyODQnIGN5PScyLjE3MTYnIHI9JzEnIHN0eWxlPSdvcGFjaXR5Oj=
AuMzsnIC8+CgkJPGNpcmNsZSBjeD0nOScgY3k9JzUnIHI9JzEnIHN0eWxlPSdvcGFjaXR5OjAuM=
zsnIC8+CgkJPGNpcmNsZSBjeD0nNy44Mjg0JyBjeT0nNy44Mjg0JyByPScxJyBzdHlsZT0nb3Bh=
Y2l0eTowLjM7JyAvPgoJCTxjaXJjbGUgY3g9JzUnIGN5PSc5JyByPScxJyBzdHlsZT0nb3BhY2l=
0eTowLjM7JyAvPgoJCTxjaXJjbGUgY3g9JzIuMTcxNicgY3k9JzcuODI4NCcgcj0nMScgc3R5bG=
U9J29wYWNpdHk6MC4zOycgLz4KCQk8Y2lyY2xlIGN4PScxJyBjeT0nNScgcj0nMScgc3R5bGU9J=
29wYWNpdHk6MC4zOycgLz4KCQk8Y2lyY2xlIGN4PScyLjE3MTYnIGN5PScyLjE3MTYnIHI9JzEn=
IHN0eWxlPSdvcGFjaXR5OjAuMzsnIC8+Cgk8L2c+Cjwvc3ZnPgo=3D"); }

.hc-black .monaco-tree .monaco-tree-rows.show-twisties > .monaco-tree-row.h=
as-children > .content::before { background-image: url("data:image/svg+xml;=
base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIg=
aGVpZ2h0PSIxNiI+PHBhdGggZmlsbD0iI2ZmZiIgZD0iTTYgNHY4bDQtNC00LTR6bTEgMi40MTR=
sMS41ODYgMS41ODYtMS41ODYgMS41ODZ2LTMuMTcyeiIvPjwvc3ZnPg=3D=3D"); }

.hc-black .monaco-tree .monaco-tree-rows.show-twisties > .monaco-tree-row.e=
xpanded > .content::before { background-image: url("data:image/svg+xml;base=
64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVp=
Z2h0PSIxNiI+PHBhdGggZmlsbD0iI2ZmZiIgZD0iTTExIDEwLjA3aC01LjY1Nmw1LjY1Ni01LjY=
1NnY1LjY1NnoiLz48L3N2Zz4=3D"); }

.hc-black .monaco-tree .monaco-tree-rows > .monaco-tree-row.has-children.lo=
ading > .content::before { background-image: url("data:image/svg+xml;base64=
,PD94bWwgdmVyc2lvbj0nMS4wJyBzdGFuZGFsb25lPSdubycgPz4KPHN2ZyB4bWxucz0naHR0cD=
ovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZlcnNpb249JzEuMScgd2lkdGg9JzEwcHgnIGhlaWdod=
D0nMTBweCc+Cgk8c3R5bGU+CiAgICBjaXJjbGUgewogICAgICBhbmltYXRpb246IGJhbGwgMC42=
cyBsaW5lYXIgaW5maW5pdGU7CiAgICB9CgogICAgY2lyY2xlOm50aC1jaGlsZCgyKSB7IGFuaW1=
hdGlvbi1kZWxheTogMC4wNzVzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDMpIHsgYW5pbWF0aW=
9uLWRlbGF5OiAwLjE1czsgfQogICAgY2lyY2xlOm50aC1jaGlsZCg0KSB7IGFuaW1hdGlvbi1kZ=
WxheTogMC4yMjVzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDUpIHsgYW5pbWF0aW9uLWRlbGF5=
OiAwLjNzOyB9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDYpIHsgYW5pbWF0aW9uLWRlbGF5OiAwLjM=
3NXM7IH0KICAgIGNpcmNsZTpudGgtY2hpbGQoNykgeyBhbmltYXRpb24tZGVsYXk6IDAuNDVzOy=
B9CiAgICBjaXJjbGU6bnRoLWNoaWxkKDgpIHsgYW5pbWF0aW9uLWRlbGF5OiAwLjUyNXM7IH0KC=
iAgICBAa2V5ZnJhbWVzIGJhbGwgewogICAgICBmcm9tIHsgb3BhY2l0eTogMTsgfQogICAgICB0=
byB7IG9wYWNpdHk6IDAuMzsgfQogICAgfQoJPC9zdHlsZT4KCTxnIHN0eWxlPSJmaWxsOndoaXR=
lOyI+CgkJPGNpcmNsZSBjeD0nNScgY3k9JzEnIHI9JzEnIHN0eWxlPSdvcGFjaXR5OjAuMzsnIC=
8+CgkJPGNpcmNsZSBjeD0nNy44Mjg0JyBjeT0nMi4xNzE2JyByPScxJyBzdHlsZT0nb3BhY2l0e=
TowLjM7JyAvPgoJCTxjaXJjbGUgY3g9JzknIGN5PSc1JyByPScxJyBzdHlsZT0nb3BhY2l0eTow=
LjM7JyAvPgoJCTxjaXJjbGUgY3g9JzcuODI4NCcgY3k9JzcuODI4NCcgcj0nMScgc3R5bGU9J29=
wYWNpdHk6MC4zOycgLz4KCQk8Y2lyY2xlIGN4PSc1JyBjeT0nOScgcj0nMScgc3R5bGU9J29wYW=
NpdHk6MC4zOycgLz4KCQk8Y2lyY2xlIGN4PScyLjE3MTYnIGN5PSc3LjgyODQnIHI9JzEnIHN0e=
WxlPSdvcGFjaXR5OjAuMzsnIC8+CgkJPGNpcmNsZSBjeD0nMScgY3k9JzUnIHI9JzEnIHN0eWxl=
PSdvcGFjaXR5OjAuMzsnIC8+CgkJPGNpcmNsZSBjeD0nMi4xNzE2JyBjeT0nMi4xNzE2JyByPSc=
xJyBzdHlsZT0nb3BhY2l0eTowLjM7JyAvPgoJPC9nPgo8L3N2Zz4K"); }

.monaco-tree-action.collapse-all { background: url("data:image/svg+xml;base=
64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVp=
Z2h0PSIxNiIgdmlld0JveD0iLTEgMCAxNiAxNiIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAtMSA=
wIDE2IDE2Ij48cGF0aCBmaWxsPSIjNDI0MjQyIiBkPSJNMTQgMXY5aC0xdi04aC04di0xaDl6bS=
0xMSAydjFoOHY4aDF2LTloLTl6bTcgMnY5aC05di05aDl6bS0yIDJoLTV2NWg1di01eiIvPjxyZ=
WN0IHg9IjQiIHk9IjkiIGZpbGw9IiMwMDUzOUMiIHdpZHRoPSIzIiBoZWlnaHQ9IjEiLz48L3N2=
Zz4=3D") 50% center no-repeat; }

.hc-black .monaco-tree-action.collapse-all, .vs-dark .monaco-tree-action.co=
llapse-all { background: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR=
0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD=
0iLTEgMCAxNiAxNiIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAtMSAwIDE2IDE2Ij48cGF0aCBma=
WxsPSIjQzVDNUM1IiBkPSJNMTQgMXY5aC0xdi04aC04di0xaDl6bS0xMSAydjFoOHY4aDF2LTlo=
LTl6bTcgMnY5aC05di05aDl6bS0yIDJoLTV2NWg1di01eiIvPjxyZWN0IHg9IjQiIHk9IjkiIGZ=
pbGw9IiM3NUJFRkYiIHdpZHRoPSIzIiBoZWlnaHQ9IjEiLz48L3N2Zz4=3D") 50% center no=
-repeat; }

.monaco-editor .inputarea { min-width: 0px; min-height: 0px; margin: 0px; p=
adding: 0px; position: absolute; resize: none; border: none; overflow: hidd=
en; color: transparent; background-color: transparent; outline: none !impor=
tant; }

.monaco-editor .inputarea.ime-input { z-index: 3; }

.monaco-editor .margin-view-overlays .current-line-margin, .monaco-editor .=
view-overlays .current-line { display: block; position: absolute; left: 0px=
; top: 0px; box-sizing: border-box; }

.monaco-editor .lines-content .cdr { position: absolute; }

.monaco-editor .glyph-margin { position: absolute; top: 0px; }

.monaco-editor .lines-content .cigr, .monaco-editor .margin-view-overlays .=
cgmr { position: absolute; }

.monaco-editor .margin-view-overlays .line-numbers { position: absolute; te=
xt-align: right; display: inline-block; vertical-align: middle; box-sizing:=
 border-box; cursor: default; height: 100%; }

.monaco-editor .relative-current-line-number { text-align: left; display: i=
nline-block; width: 100%; }

.monaco-workbench .monaco-editor .margin-view-overlays .line-numbers { curs=
or: -webkit-image-set(url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cD=
ovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNSIgaGVpZ2h0PSIyMSIgeD0iMHB4IiB5P=
SIwcHgiIHZpZXdCb3g9IjAgMCAxNSAyMSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAw=
IDAgMTUgMjE7Ij48cG9seWdvbiBzdHlsZT0iZmlsbDojRkZGRkZGO3N0cm9rZTojMDAwMDAwIiB=
wb2ludHM9IjE0LjUsMS4yIDEuOSwxMy44IDcuMSwxMy44IDQuNSwxOS4xIDcuNywyMC4xIDEwLj=
MsMTQuOSAxNC41LDE4Ii8+PC9zdmc+") 1x, url("data:image/svg+xml;base64,PHN2ZyB=
4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4IiB3aWR0aD=
0iMzAiIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCAzMCA0MiIgc3R5bGU9ImVuYWJsZS1iYWNrZ=
3JvdW5kOm5ldyAwIDAgMzAgNDI7Ij48cG9seWdvbiBzdHlsZT0iZmlsbDojRkZGRkZGO3N0cm9r=
ZTojMDAwMDAwO3N0cm9rZS13aWR0aDoyOyIgcG9pbnRzPSIyOSwyLjQgMy44LDI3LjYgMTQuMyw=
yNy42IDksMzguMSAxNS40LDQwLjIgMjAuNiwyOS43IDI5LDM2Ii8+PC9zdmc+Cg=3D=3D") 2x)=
 30 0, default; }

.monaco-workbench .monaco-editor.mac .margin-view-overlays .line-numbers { =
cursor: -webkit-image-set(url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaH=
R0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxOCIgdmlld0Jve=
D0iMCAwIDEyIDE4Ij48c3R5bGU+LnN0MHtmaWxsOiNmZmZ9PC9zdHlsZT48dGl0bGU+ZmxpcHBl=
ZC1jdXJzb3ItbWFjPC90aXRsZT48cGF0aCBkPSJNNC4zIDE2LjVsMS42LTQuNkgxLjFMMTEuNSA=
xLjJ2MTQuNEw4LjcgMTNsLTEuNiA0LjV6Ii8+PHBhdGggY2xhc3M9InN0MCIgZD0iTTExIDE0Lj=
VsLTIuNS0yLjNMNyAxNi43IDUgMTZsMS42LTQuNWgtNGw4LjUtOU0wIDEyLjVoNS4ybC0xLjUgN=
C4xTDcuNSAxOCA5IDE0LjJsMi45IDIuM1YwTDAgMTIuNXoiLz48L3N2Zz4=3D") 1x, url("da=
ta:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmc=
iIHdpZHRoPSIyNCIgaGVpZ2h0PSIzNiIgdmlld0JveD0iMCAwIDI0IDM2LjEiPjxkZWZzPjxzdH=
lsZT4uYXtmaWxsOiNmZmY7fTwvc3R5bGU+PC9kZWZzPjx0aXRsZT5mbGlwcGVkLWN1cnNvci1tY=
WMtMng8L3RpdGxlPjxwb2x5Z29uIHBvaW50cz0iOC42IDMzLjEgMTEuOCAyMy45IDIuMiAyMy45=
IDIzIDIuNSAyMyAzMS4zIDE3LjQgMjYuMSAxNC4yIDM1LjEgOC42IDMzLjEiLz48cGF0aCBjbGF=
zcz0iYSIgZD0iTTIyLDI5LjFsLTUtNC42LTMuMDYyLDguOTM4LTQuMDYyLTEuNUwxMywyM0g1TD=
IyLDVNMCwyNUgxMC40bC0zLDguM0wxNSwzNi4xbDMuMTI1LTcuNjYyTDI0LDMzVjBaIi8+PC9zd=
mc+") 2x) 24 3, default; }

.monaco-editor .margin-view-overlays .line-numbers.lh-odd { margin-top: 1px=
; }

.monaco-editor .lines-content, .monaco-editor .view-line, .monaco-editor .v=
iew-lines { user-select: text; }

.monaco-editor.ie .lines-content, .monaco-editor.ie .view-line, .monaco-edi=
tor.ie .view-lines { user-select: none; }

.monaco-editor .view-lines { cursor: text; white-space: nowrap; }

.monaco-editor.hc-black.mac .view-lines, .monaco-editor.vs-dark.mac .view-l=
ines { cursor: -webkit-image-set(url("data:image/png;base64,iVBORw0KGgoAAAA=
NSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAAL0lEQVQoz2NgCD3x//9/BhBYBWdhgFVAiVW4JBFKGI=
a4AqD0//9D3pt4I4tAdAMAHTQ/j5Zom30AAAAASUVORK5CYII=3D") 1x, url("data:image/=
png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAQAAADZc7J/AAAAz0lEQVRIx2NgYGBY=
/R8I/vx5eelX3n82IJ9FxGf6tksvf/8FiTMQAcAGQMDvSwu09abffY8QYSAScNk45G198eX//ye=
v73/4///701eh//kZSARckrNBRvz//+8+6ZohwCzjGNjdgQxkAg7B9WADeBjIBqtJCbhRA0YNoI=
kBSNmaPEMoNmA0FkYNoFKhapJ6FGyAH3nauaSmPfwI0v/3OukVi0CIZ+F25KrtYcx/CTIy0e+rC=
7R1Z4KMICVTQQ14feVXIbR695u14+Ir4gwAAD49E54wc1kWAAAAAElFTkSuQmCC") 2x) 5 8, =
text; }

.monaco-editor .view-line { position: absolute; width: 100%; }

.monaco-editor .lines-decorations { position: absolute; top: 0px; backgroun=
d: rgb(255, 255, 255); }

.monaco-editor .margin-view-overlays .cldr { position: absolute; height: 10=
0%; }

.monaco-editor .margin-view-overlays .cmdr { position: absolute; left: 0px;=
 width: 100%; height: 100%; }

.monaco-editor .minimap.slider-mouseover .minimap-slider { opacity: 0; tran=
sition: opacity 0.1s linear 0s; }

.monaco-editor .minimap.slider-mouseover .minimap-slider.active, .monaco-ed=
itor .minimap.slider-mouseover:hover .minimap-slider { opacity: 1; }

.monaco-editor .minimap-shadow-hidden { position: absolute; width: 0px; }

.monaco-editor .minimap-shadow-visible { position: absolute; left: -6px; wi=
dth: 6px; }

.monaco-editor .overlayWidgets { position: absolute; top: 0px; left: 0px; }

.monaco-editor .view-ruler { position: absolute; top: 0px; }

.monaco-editor .scroll-decoration { position: absolute; top: 0px; left: 0px=
; height: 6px; }

.monaco-editor .lines-content .cslr { position: absolute; }

.monaco-editor .top-left-radius { border-top-left-radius: 3px; }

.monaco-editor .bottom-left-radius { border-bottom-left-radius: 3px; }

.monaco-editor .top-right-radius { border-top-right-radius: 3px; }

.monaco-editor .bottom-right-radius { border-bottom-right-radius: 3px; }

.monaco-editor.hc-black .top-left-radius { border-top-left-radius: 0px; }

.monaco-editor.hc-black .bottom-left-radius { border-bottom-left-radius: 0p=
x; }

.monaco-editor.hc-black .top-right-radius { border-top-right-radius: 0px; }

.monaco-editor.hc-black .bottom-right-radius { border-bottom-right-radius: =
0px; }

.monaco-editor .cursors-layer { position: absolute; top: 0px; }

.monaco-editor .cursors-layer > .cursor { position: absolute; cursor: text;=
 }

.monaco-editor .cursors-layer > .cursor.secondary { opacity: 0.6; }

.monaco-editor .cursors-layer.cursor-block-outline-style > .cursor { box-si=
zing: border-box; border-style: solid; border-width: 1px; background: trans=
parent !important; }

.monaco-editor .cursors-layer.cursor-underline-style > .cursor { border-bot=
tom-width: 2px; border-bottom-style: solid; box-sizing: border-box; backgro=
und: transparent !important; }

.monaco-editor .cursors-layer.cursor-underline-thin-style > .cursor { borde=
r-bottom-width: 1px; border-bottom-style: solid; box-sizing: border-box; ba=
ckground: transparent !important; }

@keyframes monaco-cursor-smooth {=20
  0%, 20% { opacity: 1; }
  60%, 100% { opacity: 0; }
}

@keyframes monaco-cursor-phase {=20
  0%, 20% { opacity: 1; }
  90%, 100% { opacity: 0; }
}

@keyframes monaco-cursor-expand {=20
  0%, 20% { transform: scaleY(1); }
  80%, 100% { transform: scaleY(0); }
}

.cursor-smooth { animation: 0.5s ease-in-out 0s 20 alternate none running m=
onaco-cursor-smooth; }

.cursor-phase { animation: 0.5s ease-in-out 0s 20 alternate none running mo=
naco-cursor-phase; }

.cursor-expand > .cursor { animation: 0.5s ease-in-out 0s 20 alternate none=
 running monaco-cursor-expand; }

.monaco-diff-editor .diffOverview { z-index: 2; }

.monaco-diff-editor.vs .diffOverview { background: rgba(0, 0, 0, 0.03); }

.monaco-diff-editor.vs-dark .diffOverview { background: rgba(255, 255, 255,=
 0.01); }

.monaco-diff-editor .diffViewport { box-shadow: rgb(185, 185, 185) 0px 0px =
1px 0px inset; background: rgba(0, 0, 0, 0.1); }

.monaco-diff-editor.hc-black .diffViewport, .monaco-diff-editor.vs-dark .di=
ffViewport { background: rgba(255, 255, 255, 0.1); }

.monaco-scrollable-element.modified-in-monaco-diff-editor.vs-dark .scrollba=
r, .monaco-scrollable-element.modified-in-monaco-diff-editor.vs .scrollbar =
{ background: transparent; }

.monaco-scrollable-element.modified-in-monaco-diff-editor.hc-black .scrollb=
ar { background: none; }

.monaco-scrollable-element.modified-in-monaco-diff-editor .slider { z-index=
: 3; }

.modified-in-monaco-diff-editor .slider.active { background: rgba(171, 171,=
 171, 0.4); }

.modified-in-monaco-diff-editor.hc-black .slider.active { background: none;=
 }

.monaco-diff-editor .delete-sign, .monaco-diff-editor .insert-sign, .monaco=
-editor .delete-sign, .monaco-editor .insert-sign { background-size: 60%; o=
pacity: 0.7; background-repeat: no-repeat; background-position: 50% 50%; }

.monaco-diff-editor.hc-black .delete-sign, .monaco-diff-editor.hc-black .in=
sert-sign, .monaco-editor.hc-black .delete-sign, .monaco-editor.hc-black .i=
nsert-sign { opacity: 1; }

.monaco-diff-editor .insert-sign, .monaco-editor .insert-sign { background-=
image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiI=
HhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHRpdGxlPkxheWVyIDE8L3RpdGxl=
PjxyZWN0IGhlaWdodD0iMTEiIHdpZHRoPSIzIiB5PSIzIiB4PSI3IiBmaWxsPSIjNDI0MjQyIi8=
+PHJlY3QgaGVpZ2h0PSIzIiB3aWR0aD0iMTEiIHk9IjciIHg9IjMiIGZpbGw9IiM0MjQyNDIiLz=
48L3N2Zz4=3D"); }

.monaco-diff-editor .delete-sign, .monaco-editor .delete-sign { background-=
image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiI=
HhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHRpdGxlPkxheWVyIDE8L3RpdGxl=
PjxyZWN0IGhlaWdodD0iMyIgd2lkdGg9IjExIiB5PSI3IiB4PSIzIiBmaWxsPSIjNDI0MjQyIi8=
+PC9zdmc+"); }

.monaco-diff-editor.hc-black .insert-sign, .monaco-diff-editor.vs-dark .ins=
ert-sign, .monaco-editor.hc-black .insert-sign, .monaco-editor.vs-dark .ins=
ert-sign { background-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0=
iMTYiIGhlaWdodD0iMTYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHRpdG=
xlPkxheWVyIDE8L3RpdGxlPjxyZWN0IGhlaWdodD0iMTEiIHdpZHRoPSIzIiB5PSIzIiB4PSI3I=
iBmaWxsPSIjQzVDNUM1Ii8+PHJlY3QgaGVpZ2h0PSIzIiB3aWR0aD0iMTEiIHk9IjciIHg9IjMi=
IGZpbGw9IiNDNUM1QzUiLz48L3N2Zz4=3D"); }

.monaco-diff-editor.hc-black .delete-sign, .monaco-diff-editor.vs-dark .del=
ete-sign, .monaco-editor.hc-black .delete-sign, .monaco-editor.vs-dark .del=
ete-sign { background-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0=
iMTYiIGhlaWdodD0iMTYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHRpdG=
xlPkxheWVyIDE8L3RpdGxlPjxyZWN0IGhlaWdodD0iMyIgd2lkdGg9IjExIiB5PSI3IiB4PSIzI=
iBmaWxsPSIjQzVDNUM1Ii8+PC9zdmc+"); }

.monaco-editor .inline-added-margin-view-zone, .monaco-editor .inline-delet=
ed-margin-view-zone { text-align: right; }

.monaco-editor .diagonal-fill { background: url("data:image/png;base64,iVBO=
Rw0KGgoAAAANSUhEUgAAAAkAAAAJCAYAAADgkQYQAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv=
8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAadEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41Lj=
EwMPRyoQAAAChJREFUKFNjOH/+fAMDDgCSu3Dhwn9c8gwwBTgNGR4KQP4HhQOhsAIAZCBTkhtqe=
PcAAAAASUVORK5CYII=3D"); }

.monaco-editor.vs-dark .diagonal-fill { opacity: 0.2; }

.monaco-editor.hc-black .diagonal-fill { background: none; }

.monaco-editor .view-zones .view-lines .view-line span { display: inline-bl=
ock; }

.monaco-diff-editor .diff-review-line-number { text-align: right; display: =
inline-block; }

.monaco-diff-editor .diff-review { position: absolute; user-select: none; }

.monaco-diff-editor .diff-review-summary { padding-left: 10px; }

.monaco-diff-editor .diff-review-shadow { position: absolute; }

.monaco-diff-editor .diff-review-row { white-space: pre; }

.monaco-diff-editor .diff-review-table { display: table; min-width: 100%; }

.monaco-diff-editor .diff-review-row { display: table-row; width: 100%; }

.monaco-diff-editor .diff-review-cell { display: table-cell; }

.monaco-diff-editor .diff-review-spacer { display: inline-block; width: 10p=
x; }

.monaco-diff-editor .diff-review-actions { display: inline-block; position:=
 absolute; right: 10px; top: 2px; }

.monaco-diff-editor .diff-review-actions .action-label { width: 16px; heigh=
t: 16px; margin: 2px 0px; }

.monaco-diff-editor .action-label.icon.close-diff-review { background: url(=
"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9z=
dmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMyAzIDE2IDE2IiBlbmFibGUtYmF=
ja2dyb3VuZD0ibmV3IDMgMyAxNiAxNiI+PHBvbHlnb24gZmlsbD0iIzQyNDI0MiIgcG9pbnRzPS=
IxMi41OTcsMTEuMDQyIDE1LjQsMTMuODQ1IDEzLjg0NCwxNS40IDExLjA0MiwxMi41OTggOC4yM=
zksMTUuNCA2LjY4MywxMy44NDUgOS40ODUsMTEuMDQyIDYuNjgzLDguMjM5IDguMjM4LDYuNjgz=
IDExLjA0Miw5LjQ4NiAxMy44NDUsNi42ODMgMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=3D") 50% =
center no-repeat; }

.monaco-diff-editor.hc-black .action-label.icon.close-diff-review, .monaco-=
diff-editor.vs-dark .action-label.icon.close-diff-review { background: url(=
"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9z=
dmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMyAzIDE2IDE2IiBlbmFibGUtYmF=
ja2dyb3VuZD0ibmV3IDMgMyAxNiAxNiI+PHBvbHlnb24gZmlsbD0iI2U4ZThlOCIgcG9pbnRzPS=
IxMi41OTcsMTEuMDQyIDE1LjQsMTMuODQ1IDEzLjg0NCwxNS40IDExLjA0MiwxMi41OTggOC4yM=
zksMTUuNCA2LjY4MywxMy44NDUgOS40ODUsMTEuMDQyIDYuNjgzLDguMjM5IDguMjM4LDYuNjgz=
IDExLjA0Miw5LjQ4NiAxMy44NDUsNi42ODMgMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=3D") 50% =
center no-repeat; }

.monaco-editor .editor-widget input { color: inherit; }

.monaco-editor { position: relative; overflow: visible; text-size-adjust: 1=
00%; font-feature-settings: "liga" 0, "calt" 0; }

.monaco-editor.enable-ligatures { font-feature-settings: "liga", "calt"; }

.monaco-editor .overflow-guard { position: relative; overflow: hidden; }

.monaco-editor .view-overlays { position: absolute; top: 0px; }

.monaco-editor .vs-whitespace { display: inline-block; }

.monaco-editor .bracket-match { box-sizing: border-box; }

.monaco-menu .monaco-action-bar.vertical .action-label.hover { background-c=
olor: rgb(238, 238, 238); }

.monaco-editor .codelens-decoration { overflow: hidden; display: inline-blo=
ck; text-overflow: ellipsis; }

.monaco-editor .codelens-decoration > a, .monaco-editor .codelens-decoratio=
n > span { user-select: none; white-space: nowrap; vertical-align: sub; }

.monaco-editor .codelens-decoration > a { text-decoration: none; }

.monaco-editor .codelens-decoration > a:hover { text-decoration: underline;=
 cursor: pointer; }

.monaco-editor .codelens-decoration.invisible-cl { opacity: 0; }

@keyframes fadein {=20
  0% { opacity: 0; visibility: visible; }
  100% { opacity: 1; }
}

@-webkit-keyframes fadein {=20
  0% { opacity: 0; visibility: visible; }
  100% { opacity: 1; }
}

.monaco-editor .codelens-decoration.fadein { animation: 0.5s linear 0s 1 no=
rmal none running fadein; }

.colorpicker-widget { height: 190px; user-select: none; }

.monaco-shell .colorpicker-hover[tabindex=3D"0"]:focus { outline: none; }

.colorpicker-header { display: flex; height: 24px; position: relative; back=
ground: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAECAYAAACp=
8Z5+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA=
ZdEVYdFNvZnR3YXJlAHBhaW50Lm5ldCA0LjAuMTZEaa/1AAAAHUlEQVQYV2PYvXu3JAi7uLiAMa=
YAjAGTQBPYLQkAa/0Zef3qRswAAAAASUVORK5CYII=3D") 0% 0% / 9px 9px; image-rende=
ring: pixelated; }

.colorpicker-header .picked-color { width: 216px; text-shadow: rgb(0, 0, 0)=
 0.5px 0.5px 0.5px; line-height: 20px; cursor: pointer; flex: 1 1 0%; text-=
align: center; color: rgb(255, 255, 255); }

.colorpicker-header .original-color { width: 74px; z-index: inherit; }

.colorpicker-body { display: flex; padding: 8px; position: relative; }

.colorpicker-body .saturation-wrap { overflow: hidden; height: 150px; posit=
ion: relative; min-width: 220px; flex: 1 1 0%; }

.colorpicker-body .saturation-box { height: 150px; position: absolute; }

.colorpicker-body .saturation-selection { width: 9px; height: 9px; margin: =
-5px 0px 0px -5px; border: 1px solid rgb(255, 255, 255); border-radius: 100=
%; box-shadow: rgba(0, 0, 0, 0.3) 0px 0px 1px inset; position: absolute; }

.colorpicker-body .strip { width: 25px; height: 150px; }

.colorpicker-body .hue-strip { position: relative; margin-left: 8px; cursor=
: -webkit-grab; background: linear-gradient(red 0px, rgb(255, 255, 0) 17%, =
rgb(0, 255, 0) 33%, rgb(0, 255, 255) 50%, rgb(0, 0, 255) 67%, rgb(255, 0, 2=
55) 83%, red); }

.colorpicker-body .opacity-strip { position: relative; margin-left: 8px; cu=
rsor: -webkit-grab; background: url("data:image/png;base64,iVBORw0KGgoAAAAN=
SUhEUgAAAAQAAAAECAYAAACp8Z5+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEh=
ZcwAADsMAAA7DAcdvqGQAAAAZdEVYdFNvZnR3YXJlAHBhaW50Lm5ldCA0LjAuMTZEaa/1AAAAHU=
lEQVQYV2PYvXu3JAi7uLiAMaYAjAGTQBPYLQkAa/0Zef3qRswAAAAASUVORK5CYII=3D") 0% 0=
% / 9px 9px; image-rendering: pixelated; }

.colorpicker-body .slider { position: absolute; top: 0px; width: 100%; back=
ground: rgba(99, 99, 99, 0.7); height: 5px; }

.colorpicker-body .opacity-strip .opacity-overlay { height: 150px; pointer-=
events: none; }

.monaco-editor.vs .dnd-target { border-right: 2px dotted rgb(0, 0, 0); colo=
r: rgb(255, 255, 255); }

.monaco-editor.vs-dark .dnd-target { border-right: 2px dotted rgb(174, 175,=
 173); color: rgb(81, 80, 79); }

.monaco-editor.hc-black .dnd-target { border-right: 2px dotted rgb(255, 255=
, 255); color: rgb(0, 0, 0); }

.monaco-editor.hc-black.mac.mouse-default .view-lines, .monaco-editor.mouse=
-default .view-lines, .monaco-editor.vs-dark.mac.mouse-default .view-lines =
{ cursor: default; }

.monaco-editor.hc-black.mac.mouse-copy .view-lines, .monaco-editor.mouse-co=
py .view-lines, .monaco-editor.vs-dark.mac.mouse-copy .view-lines { cursor:=
 copy; }

.monaco-checkbox .label { width: 12px; height: 12px; border: 1px solid rgb(=
0, 0, 0); background-color: transparent; display: inline-block; }

.monaco-checkbox .checkbox { position: absolute; overflow: hidden; clip: re=
ct(0px, 0px, 0px, 0px); height: 1px; width: 1px; margin: -1px; padding: 0px=
; border: 0px; }

.monaco-checkbox .checkbox:checked + .label { background-color: rgb(0, 0, 0=
); }

.monaco-editor .find-widget { position: absolute; z-index: 3; top: -44px; h=
eight: 34px; overflow: hidden; line-height: 19px; transition: top 0.2s line=
ar 0s; padding: 0px 4px; }

.monaco-editor .find-widget.replaceToggled { top: -74px; height: 64px; }

.monaco-editor .find-widget.replaceToggled > .replace-part { display: -webk=
it-flex; align-items: center; }

.monaco-editor .find-widget.replaceToggled.visible, .monaco-editor .find-wi=
dget.visible { top: 0px; }

.monaco-editor .find-widget .monaco-inputbox .input { background-color: tra=
nsparent; min-height: 0px; }

.monaco-editor .find-widget .replace-input .input { font-size: 13px; }

.monaco-editor .find-widget.visible.noanimation { transition: none 0s ease =
0s; }

.monaco-editor .find-widget > .find-part, .monaco-editor .find-widget > .re=
place-part { margin: 4px 0px 0px 17px; font-size: 12px; display: -webkit-fl=
ex; align-items: center; }

.monaco-editor .find-widget > .find-part .monaco-inputbox, .monaco-editor .=
find-widget > .replace-part .monaco-inputbox { height: 25px; }

.monaco-editor .find-widget > .find-part .monaco-inputbox > .wrapper > .inp=
ut { padding-right: 66px; width: 100% !important; }

.monaco-editor .find-widget > .find-part .monaco-inputbox > .wrapper > .inp=
ut, .monaco-editor .find-widget > .replace-part .monaco-inputbox > .wrapper=
 > .input { padding-top: 2px; padding-bottom: 2px; }

.monaco-editor .find-widget .monaco-findInput { vertical-align: middle; dis=
play: -webkit-flex; flex: 1 1 0%; }

.monaco-editor .find-widget .matchesCount { display: -webkit-flex; flex: in=
itial; margin: 0px 1px 0px 3px; padding: 2px 2px 0px; height: 25px; vertica=
l-align: middle; box-sizing: border-box; text-align: center; line-height: 2=
3px; }

.monaco-editor .find-widget .button { min-width: 20px; width: 20px; height:=
 20px; display: -webkit-flex; flex: initial; margin-left: 3px; background-p=
osition: 50% center; background-repeat: no-repeat; cursor: pointer; }

.monaco-editor .find-widget .button:not(.disabled):hover { background-color=
: rgba(0, 0, 0, 0.1); }

.monaco-editor .find-widget .button.left { margin-left: 0px; margin-right: =
3px; }

.monaco-editor .find-widget .button.wide { width: auto; padding: 1px 6px; t=
op: -1px; }

.monaco-editor .find-widget .button.toggle { position: absolute; top: 0px; =
left: 0px; width: 18px; height: 100%; box-sizing: border-box; }

.monaco-editor .find-widget .button.toggle.disabled { display: none; }

.monaco-editor .find-widget .previous { background-image: url("data:image/s=
vg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiDQoJIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZ=
y8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiDQoJ=
IHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSItMSA=
tMyAxNiAxNiIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAtMSAtMyAxNiAxNiIgeG1sOnNwYWNlPS=
JwcmVzZXJ2ZSI+DQo8cG9seWdvbiBmaWxsPSIjNDI0MjQyIiBwb2ludHM9IjEzLDQgNiw0IDksM=
SA2LDEgMiw1IDYsOSA5LDkgNiw2IDEzLDYgIi8+DQo8L3N2Zz4NCg=3D=3D"); }

.monaco-editor .find-widget .next { background-image: url("data:image/svg+x=
ml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiDQoJIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yM=
DAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiDQoJIHg9=
IjBweCIgeT0iMHB4IiB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSItMSAtMyA=
xNiAxNiIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAtMSAtMyAxNiAxNiIgeG1sOnNwYWNlPSJwcm=
VzZXJ2ZSI+DQo8cGF0aCBmaWxsPSIjNDI0MjQyIiBkPSJNMSw0aDdMNSwxaDNsNCw0TDgsOUg1b=
DMtM0gxVjR6Ii8+DQo8L3N2Zz4NCg=3D=3D"); }

.monaco-editor .find-widget .disabled { opacity: 0.3; cursor: default; }

.monaco-editor .find-widget .monaco-checkbox { width: 20px; height: 20px; d=
isplay: inline-block; vertical-align: middle; margin-left: 3px; }

.monaco-editor .find-widget .monaco-checkbox .label { content: ""; display:=
 inline-block; background-repeat: no-repeat; background-position: 0px 0px; =
background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3=
d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+CjxnIHRyYW5zZm9yb=
T0idHJhbnNsYXRlKDAsLTEwMzIuMzYyMikiPgogIDxyZWN0IHdpZHRoPSI5IiBoZWlnaHQ9IjIi=
IHg9IjIiIHk9IjEwNDYuMzYyMiIgc3R5bGU9ImZpbGw6IzQyNDI0MjtmaWxsLW9wYWNpdHk6MTt=
zdHJva2U6bm9uZSIgLz4KICA8cmVjdCB3aWR0aD0iMTMiIGhlaWdodD0iMiIgeD0iMiIgeT0iMT=
A0My4zNjIyIiBzdHlsZT0iZmlsbDojNDI0MjQyO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lI=
iAvPgogIDxyZWN0IHdpZHRoPSI2IiBoZWlnaHQ9IjIiIHg9IjIiIHk9IjEwNDAuMzYyMiIgc3R5=
bGU9ImZpbGw6IzQyNDI0MjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZSIgLz4KICA8cmVjdCB=
3aWR0aD0iMTIiIGhlaWdodD0iMiIgeD0iMiIgeT0iMTAzNy4zNjIyIiBzdHlsZT0iZmlsbDojND=
I0MjQyO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lIiAvPgo8L2c+Cjwvc3ZnPg=3D=3D"); w=
idth: 20px; height: 20px; border: none; }

.monaco-editor .find-widget .monaco-checkbox .checkbox:disabled + .label { =
opacity: 0.3; cursor: default; }

.monaco-editor .find-widget .monaco-checkbox .checkbox:not(:disabled) + .la=
bel { cursor: pointer; }

.monaco-editor .find-widget .monaco-checkbox .checkbox:checked + .label { b=
ackground-color: rgba(99, 99, 99, 0.2); }

.monaco-editor .find-widget .close-fw { background-image: url("data:image/s=
vg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoP=
SIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMyAzIDE2IDE2IiBlbmFibGUtYmFja2dyb3VuZD0i=
bmV3IDMgMyAxNiAxNiI+PHBvbHlnb24gZmlsbD0iIzQyNDI0MiIgcG9pbnRzPSIxMi41OTcsMTE=
uMDQyIDE1LjQsMTMuODQ1IDEzLjg0NCwxNS40IDExLjA0MiwxMi41OTggOC4yMzksMTUuNCA2Lj=
Y4MywxMy44NDUgOS40ODUsMTEuMDQyIDYuNjgzLDguMjM5IDguMjM4LDYuNjgzIDExLjA0Miw5L=
jQ4NiAxMy44NDUsNi42ODMgMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor .find-widget .expand { background-image: url("data:image/svg=
+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI=
xNiIgaGVpZ2h0PSIxNiI+PHBhdGggZmlsbD0iIzY0NjQ2NSIgZD0iTTExIDEwLjA3aC01LjY1Nm=
w1LjY1Ni01LjY1NnY1LjY1NnoiLz48L3N2Zz4=3D"); }

.monaco-editor .find-widget .collapse { background-image: url("data:image/s=
vg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoP=
SIxNiIgaGVpZ2h0PSIxNiI+PHBhdGggZmlsbD0iIzY0NjQ2NSIgZD0iTTYgNHY4bDQtNC00LTR6=
bTEgMi40MTRsMS41ODYgMS41ODYtMS41ODYgMS41ODZ2LTMuMTcyeiIvPjwvc3ZnPg=3D=3D");=
 }

.monaco-editor .find-widget .replace { background-image: url("data:image/sv=
g+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMD=
AwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBwe=
CIgeT0iMHB4IiB3aWR0aD0iMTZweCINCgkgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSIwIDAgMTYg=
MTYiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDE2IDE2IiB4bWw6c3BhY2U9InByZXNlcnZ=
lIj4NCjxnIGlkPSJpY29uX3g1Rl9iZyI+DQoJPGc+DQoJCTxwYXRoIGZpbGw9IiM0MjQyNDIiIG=
Q9Ik0xMSwzVjFoLTF2NXYxaDFoMmgxVjRWM0gxMXogTTEzLDZoLTJWNGgyVjZ6Ii8+DQoJCTxwY=
XRoIGZpbGw9IiM0MjQyNDIiIGQ9Ik0yLDE1aDdWOUgyVjE1eiBNNCwxMGgzdjFINXYyaDJ2MUg0=
VjEweiIvPg0KCTwvZz4NCjwvZz4NCjxnIGlkPSJjb2xvcl94NUZfaW1wb3J0YW5jZSI+DQoJPHB=
hdGggZmlsbD0iIzAwNTM5QyIgZD0iTTMuOTc5LDMuNUw0LDZMMyw1djEuNUw0LjUsOEw2LDYuNV=
Y1TDUsNkw0Ljk3OSwzLjVjMC0wLjI3NSwwLjIyNS0wLjUsMC41LTAuNUg5VjJINS40NzkNCgkJQ=
zQuNjUxLDIsMy45NzksMi42NzMsMy45NzksMy41eiIvPg0KPC9nPg0KPC9zdmc+DQo=3D"); }

.monaco-editor .find-widget .replace-all { background-image: url("data:imag=
e/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy=
8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9I=
jBweCIgeT0iMHB4IiB3aWR0aD0iMTZweCINCgkgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSIwIDAg=
MTYgMTYiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDE2IDE2IiB4bWw6c3BhY2U9InByZXN=
lcnZlIj4NCjxnIGlkPSJpY29uX3g1Rl9iZyI+DQoJPHBhdGggZmlsbD0iIzQyNDI0MiIgZD0iTT=
ExLDE1VjlIMXY2SDExeiBNMiwxNHYtMmgxdi0xSDJ2LTFoM3Y0SDJ6IE0xMCwxMUg4djJoMnYxS=
Dd2LTRoM1YxMXogTTMsMTN2LTFoMXYxSDN6IE0xMyw3djZoLTFWOEg1VjcNCgkJSDEzeiBNMTMs=
MlYxaC0xdjVoM1YySDEzeiBNMTQsNWgtMVYzaDFWNXogTTExLDJ2NEg4VjRoMXYxaDFWNEg5VjN=
IOFYySDExeiIvPg0KPC9nPg0KPGcgaWQ9ImNvbG9yX3g1Rl9hY3Rpb24iPg0KCTxwYXRoIGZpbG=
w9IiMwMDUzOUMiIGQ9Ik0xLjk3OSwzLjVMMiw2TDEsNXYxLjVMMi41LDhMNCw2LjVWNUwzLDZMM=
i45NzksMy41YzAtMC4yNzUsMC4yMjUtMC41LDAuNS0wLjVIN1YySDMuNDc5DQoJCUMyLjY1MSwy=
LDEuOTc5LDIuNjczLDEuOTc5LDMuNXoiLz4NCjwvZz4NCjwvc3ZnPg0K"); }

.monaco-editor .find-widget > .replace-part { display: none; }

.monaco-editor .find-widget > .replace-part > .replace-input { display: -we=
bkit-flex; vertical-align: middle; width: auto !important; }

.monaco-editor .find-widget.reduced-find-widget .matchesCount, .monaco-edit=
or .find-widget.reduced-find-widget .monaco-checkbox { display: none; }

.monaco-editor .find-widget.narrow-find-widget { max-width: 257px !importan=
t; }

.monaco-editor .find-widget.collapsed-find-widget { max-width: 111px !impor=
tant; }

.monaco-editor .find-widget.collapsed-find-widget .button.next, .monaco-edi=
tor .find-widget.collapsed-find-widget .button.previous, .monaco-editor .fi=
nd-widget.collapsed-find-widget .button.replace, .monaco-editor .find-widge=
t.collapsed-find-widget .button.replace-all, .monaco-editor .find-widget.co=
llapsed-find-widget > .find-part .monaco-findInput .controls { display: non=
e; }

.monaco-editor .find-widget.collapsed-find-widget > .find-part .monaco-inpu=
tbox > .wrapper > .input { padding-right: 0px; }

.monaco-editor .findMatch { animation-name: inherit !important; }

.monaco-editor .find-widget .monaco-sash { margin-left: -4px; width: 2px !i=
mportant; }

.monaco-editor.hc-black .find-widget .previous, .monaco-editor.vs-dark .fin=
d-widget .previous { background-image: url("data:image/svg+xml;base64,PHN2Z=
yB2ZXJzaW9uPSIxLjEiDQoJIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1s=
bnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiDQoJIHg9IjBweCIgeT0iMHB=
4IiB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSItMSAtMyAxNiAxNiIgZW5hYm=
xlLWJhY2tncm91bmQ9Im5ldyAtMSAtMyAxNiAxNiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8c=
G9seWdvbiBmaWxsPSIjQzVDNUM1IiBwb2ludHM9IjEzLDQgNiw0IDksMSA2LDEgMiw1IDYsOSA5=
LDkgNiw2IDEzLDYgIi8+DQo8L3N2Zz4NCg=3D=3D"); }

.monaco-editor.hc-black .find-widget .next, .monaco-editor.vs-dark .find-wi=
dget .next { background-image: url("data:image/svg+xml;base64,PHN2ZyB2ZXJza=
W9uPSIxLjEiDQoJIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxp=
bms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiDQoJIHg9IjBweCIgeT0iMHB4IiB3aWR=
0aD0iMTZweCIgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSItMSAtMyAxNiAxNiIgZW5hYmxlLWJhY2=
tncm91bmQ9Im5ldyAtMSAtMyAxNiAxNiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8cGF0aCBma=
WxsPSIjQzVDNUM1IiBkPSJNMSw0aDdMNSwxaDNsNCw0TDgsOUg1bDMtM0gxVjR6Ii8+DQo8L3N2=
Zz4NCg=3D=3D"); }

.monaco-editor.hc-black .find-widget .monaco-checkbox .label, .monaco-edito=
r.vs-dark .find-widget .monaco-checkbox .label { background-image: url("dat=
a:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmci=
IHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+DQo8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLC0xMDM=
yLjM2MjIpIj4NCiAgPHJlY3Qgd2lkdGg9IjkiIGhlaWdodD0iMiIgeD0iMiIgeT0iMTA0Ni4zNj=
IyIiBzdHlsZT0iZmlsbDojQzVDNUM1O2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lIiAvPg0KI=
CA8cmVjdCB3aWR0aD0iMTMiIGhlaWdodD0iMiIgeD0iMiIgeT0iMTA0My4zNjIyIiBzdHlsZT0i=
ZmlsbDojQzVDNUM1O2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lIiAvPg0KICA8cmVjdCB3aWR=
0aD0iNiIgaGVpZ2h0PSIyIiB4PSIyIiB5PSIxMDQwLjM2MjIiIHN0eWxlPSJmaWxsOiNDNUM1Qz=
U7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmUiIC8+DQogIDxyZWN0IHdpZHRoPSIxMiIgaGVpZ=
2h0PSIyIiB4PSIyIiB5PSIxMDM3LjM2MjIiIHN0eWxlPSJmaWxsOiNDNUM1QzU7ZmlsbC1vcGFj=
aXR5OjE7c3Ryb2tlOm5vbmUiIC8+DQo8L2c+DQo8L3N2Zz4=3D"); }

.monaco-editor.hc-black .find-widget .close-fw, .monaco-editor.vs-dark .fin=
d-widget .close-fw { background-image: url("data:image/svg+xml;base64,PHN2Z=
yB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIx=
NiIgdmlld0JveD0iMyAzIDE2IDE2IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDMgMyAxNiAxNiI=
+PHBvbHlnb24gZmlsbD0iI2U4ZThlOCIgcG9pbnRzPSIxMi41OTcsMTEuMDQyIDE1LjQsMTMuOD=
Q1IDEzLjg0NCwxNS40IDExLjA0MiwxMi41OTggOC4yMzksMTUuNCA2LjY4MywxMy44NDUgOS40O=
DUsMTEuMDQyIDYuNjgzLDguMjM5IDguMjM4LDYuNjgzIDExLjA0Miw5LjQ4NiAxMy44NDUsNi42=
ODMgMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .find-widget .replace, .monaco-editor.vs-dark .find=
-widget .replace { background-image: url("data:image/svg+xml;base64,PHN2ZyB=
2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eG=
xpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0a=
D0iMTZweCINCgkgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSIwIDAgMTYgMTYiIGVuYWJsZS1iYWNr=
Z3JvdW5kPSJuZXcgMCAwIDE2IDE2IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxnIGlkPSJpY29=
uX3g1Rl9iZyI+DQoJPGc+DQoJCTxwYXRoIGZpbGw9IiNDNUM1QzUiIGQ9Ik0xMSwzVjFoLTF2NX=
YxaDFoMmgxVjRWM0gxMXogTTEzLDZoLTJWNGgyVjZ6Ii8+DQoJCTxwYXRoIGZpbGw9IiNDNUM1Q=
zUiIGQ9Ik0yLDE1aDdWOUgyVjE1eiBNNCwxMGgzdjFINXYyaDJ2MUg0VjEweiIvPg0KCTwvZz4N=
CjwvZz4NCjxnIGlkPSJjb2xvcl94NUZfaW1wb3J0YW5jZSI+DQoJPHBhdGggZmlsbD0iIzc1QkV=
GRiIgZD0iTTMuOTc5LDMuNUw0LDZMMyw1djEuNUw0LjUsOEw2LDYuNVY1TDUsNkw0Ljk3OSwzLj=
VjMC0wLjI3NSwwLjIyNS0wLjUsMC41LTAuNUg5VjJINS40NzkNCgkJQzQuNjUxLDIsMy45NzksM=
i42NzMsMy45NzksMy41eiIvPg0KPC9nPg0KPC9zdmc+DQo=3D"); }

.monaco-editor.hc-black .find-widget .replace-all, .monaco-editor.vs-dark .=
find-widget .replace-all { background-image: url("data:image/svg+xml;base64=
,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG=
1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4I=
iB3aWR0aD0iMTZweCINCgkgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSIwIDAgMTYgMTYiIGVuYWJs=
ZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDE2IDE2IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxnIGl=
kPSJpY29uX3g1Rl9iZyI+DQoJPHBhdGggZmlsbD0iI0M1QzVDNSIgZD0iTTExLDE1VjlIMXY2SD=
ExeiBNMiwxNHYtMmgxdi0xSDJ2LTFoM3Y0SDJ6IE0xMCwxMUg4djJoMnYxSDd2LTRoM1YxMXogT=
TMsMTN2LTFoMXYxSDN6IE0xMyw3djZoLTFWOEg1VjcNCgkJSDEzeiBNMTMsMlYxaC0xdjVoM1Yy=
SDEzeiBNMTQsNWgtMVYzaDFWNXogTTExLDJ2NEg4VjRoMXYxaDFWNEg5VjNIOFYySDExeiIvPg0=
KPC9nPg0KPGcgaWQ9ImNvbG9yX3g1Rl9hY3Rpb24iPg0KCTxwYXRoIGZpbGw9IiM3NUJFRkYiIG=
Q9Ik0xLjk3OSwzLjVMMiw2TDEsNXYxLjVMMi41LDhMNCw2LjVWNUwzLDZMMi45NzksMy41YzAtM=
C4yNzUsMC4yMjUtMC41LDAuNS0wLjVIN1YySDMuNDc5DQoJCUMyLjY1MSwyLDEuOTc5LDIuNjcz=
LDEuOTc5LDMuNXoiLz4NCjwvZz4NCjwvc3ZnPg0K"); }

.monaco-editor.hc-black .find-widget .expand, .monaco-editor.vs-dark .find-=
widget .expand { background-image: url("data:image/svg+xml;base64,PHN2ZyB4b=
Wxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+=
PHBhdGggZmlsbD0iI2U4ZThlOCIgZD0iTTExIDEwLjA3aC01LjY1Nmw1LjY1Ni01LjY1NnY1LjY=
1NnoiLz48L3N2Zz4=3D"); }

.monaco-editor.hc-black .find-widget .collapse, .monaco-editor.vs-dark .fin=
d-widget .collapse { background-image: url("data:image/svg+xml;base64,PHN2Z=
yB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIx=
NiI+PHBhdGggZmlsbD0iI2U4ZThlOCIgZD0iTTYgNHY4bDQtNC00LTR6bTEgMi40MTRsMS41ODY=
gMS41ODYtMS41ODYgMS41ODZ2LTMuMTcyeiIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .find-widget .button:not(.disabled):hover, .monaco-=
editor.vs-dark .find-widget .button:not(.disabled):hover { background-color=
: rgba(255, 255, 255, 0.1); }

.monaco-editor.hc-black .find-widget .button::before { position: relative; =
top: 1px; left: 2px; }

.monaco-editor.hc-black .find-widget .monaco-checkbox .checkbox:checked + .=
label { background-color: rgba(255, 255, 255, 0.1); }

.monaco-editor .margin-view-overlays .folding { margin-left: 5px; cursor: p=
ointer; background-repeat: no-repeat; background-origin: border-box; backgr=
ound-position: 3px center; background-size: 15px; opacity: 0; transition: o=
pacity 0.5s ease 0s; background-image: url("data:image/svg+xml;base64,PHN2Z=
yB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4IiB2aWV3=
Qm94PSIwIDAgMTUgMTUiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE1IDE1OyI=
+CjxwYXRoIHN0eWxlPSJmaWxsOiNCNkI2QjYiIGQ9Ik0xMSw0djdINFY0SDExIE0xMiwzSDN2OW=
g5VjNMMTIsM3oiLz4KPGxpbmUgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzZCNkI2QjtzdHJva=
2UtbWl0ZXJsaW1pdDoxMCIgeDE9IjEwIiB5MT0iNy41IiB4Mj0iNSIgeTI9IjcuNSIvPgo8L3N2=
Zz4=3D"); }

.monaco-editor.hc-black .margin-view-overlays .folding, .monaco-editor.vs-d=
ark .margin-view-overlays .folding { background-image: url("data:image/svg+=
xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIg=
eT0iMHB4IiB2aWV3Qm94PSIwIDAgMTUgMTUiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXc=
gMCAwIDE1IDE1OyI+CjxwYXRoIHN0eWxlPSJmaWxsOiM1QTVBNUEiIGQ9Ik0xMSw0djdINFY0SD=
ExIE0xMiwzSDN2OWg5VjNMMTIsM3oiLz4KPGxpbmUgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6I=
0M1QzVDNTtzdHJva2UtbWl0ZXJsaW1pdDoxMCIgeDE9IjEwIiB5MT0iNy41IiB4Mj0iNSIgeTI9=
IjcuNSIvPgo8L3N2Zz4=3D"); }

.monaco-editor.alwaysShowFoldIcons .margin-view-overlays .folding, .monaco-=
editor .margin-view-overlays:hover .folding { opacity: 1; }

.monaco-editor .margin-view-overlays .folding.collapsed { background-image:=
 url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjA=
wMC9zdmciIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTUgMTUiIHN0eWxlPSJlbmFibG=
UtYmFja2dyb3VuZDpuZXcgMCAwIDE1IDE1OyI+CjxyZWN0IHg9IjMiIHk9IjMiIHN0eWxlPSJma=
WxsOiNFOEU4RTgiIHdpZHRoPSI5IiBoZWlnaHQ9IjkiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0I2=
QjZCNiIgZD0iTTExLDR2N0g0VjRIMTEgTTEyLDNIM3Y5aDlWM0wxMiwzeiIvPgo8bGluZSBzdHl=
sZT0iZmlsbDpub25lO3N0cm9rZTojNkI2QjZCO3N0cm9rZS1taXRlcmxpbWl0OjEwIiB4MT0iMT=
AiIHkxPSI3LjUiIHgyPSI1IiB5Mj0iNy41Ii8+CjxsaW5lIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb=
2tlOiM2QjZCNkI7c3Ryb2tlLW1pdGVybGltaXQ6MTAiIHgxPSI3LjUiIHkxPSI1IiB4Mj0iNy41=
IiB5Mj0iMTAiLz4KPC9zdmc+"); opacity: 1; }

.monaco-editor.hc-black .margin-view-overlays .folding.collapsed, .monaco-e=
ditor.vs-dark .margin-view-overlays .folding.collapsed { background-image: =
url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAw=
MC9zdmciIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTUgMTUiIHN0eWxlPSJlbmFibGU=
tYmFja2dyb3VuZDpuZXcgMCAwIDE1IDE1OyI+CjxyZWN0IHg9IjMiIHk9IjMiIHN0eWxlPSJvcG=
FjaXR5OjAuMTtmaWxsOiNGRkZGRkYiIHdpZHRoPSI5IiBoZWlnaHQ9IjkiLz4KPHBhdGggc3R5b=
GU9ImZpbGw6IzVBNUE1QSIgZD0iTTExLDR2N0g0VjRIMTEgTTEyLDNIM3Y5aDlWM0wxMiwzeiIv=
Pgo8bGluZSBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojQzVDNUM1O3N0cm9rZS1taXRlcmxpbWl=
0OjEwIiB4MT0iMTAiIHkxPSI3LjUiIHgyPSI1IiB5Mj0iNy41Ii8+CjxsaW5lIHN0eWxlPSJmaW=
xsOm5vbmU7c3Ryb2tlOiNDNUM1QzU7c3Ryb2tlLW1pdGVybGltaXQ6MTAiIHgxPSI3LjUiIHkxP=
SI1IiB4Mj0iNy41IiB5Mj0iMTAiLz4KPC9zdmc+"); }

.monaco-editor .inline-folded::after { color: grey; margin: 0.1em 0.2em 0px=
; content: "=E2=8B=AF"; display: inline; line-height: 1em; cursor: pointer;=
 }

.monaco-editor .goto-definition-link { text-decoration: underline; cursor: =
pointer; }

.monaco-editor .monaco-editor-overlaymessage { padding-bottom: 8px; }

@keyframes fadeIn {=20
  0% { opacity: 0; }
  100% { opacity: 1; }
}

.monaco-editor .monaco-editor-overlaymessage.fadeIn { animation: 0.15s ease=
-out 0s 1 normal none running fadeIn; }

@keyframes fadeOut {=20
  0% { opacity: 1; }
  100% { opacity: 0; }
}

.monaco-editor .monaco-editor-overlaymessage.fadeOut { animation: 0.1s ease=
-out 0s 1 normal none running fadeOut; }

.monaco-editor .monaco-editor-overlaymessage .message { padding: 1px 4px; }

.monaco-editor .monaco-editor-overlaymessage .anchor { border: 8px solid tr=
ansparent; z-index: 8; position: absolute; width: 0px !important; height: 0=
px !important; }

.monaco-editor .marker-widget { padding-left: 2px; overflow: hidden; text-o=
verflow: ellipsis; white-space: nowrap; }

.monaco-editor .marker-widget > .stale { opacity: 0.6; font-style: italic; =
}

.monaco-editor .marker-widget div.block { display: inline-block; vertical-a=
lign: top; }

.monaco-editor .marker-widget .title { display: inline-block; padding-right=
: 5px; }

.monaco-editor .marker-widget .descriptioncontainer { white-space: pre; use=
r-select: text; }

.monaco-editor-hover { cursor: default; position: absolute; overflow: hidde=
n; z-index: 5; user-select: text; box-sizing: initial; animation: 0.1s line=
ar 0s 1 normal none running fadein; line-height: 1.5em; }

.monaco-editor-hover.hidden { display: none; }

.monaco-editor-hover .monaco-editor-hover-content { max-width: 500px; }

.monaco-editor-hover .monaco-scrollable-element { visibility: visible; }

.monaco-editor-hover .hover-row { padding: 4px 5px; }

.monaco-editor-hover p, .monaco-editor-hover ul { margin: 8px 0px; }

.monaco-editor-hover p:first-child, .monaco-editor-hover ul:first-child { m=
argin-top: 0px; }

.monaco-editor-hover p:last-child, .monaco-editor-hover ul:last-child { mar=
gin-bottom: 0px; }

.monaco-editor-hover ul { padding-left: 20px; }

.monaco-editor-hover li > p { margin-bottom: 0px; }

.monaco-editor-hover li > ul { margin-top: 0px; }

.monaco-editor-hover code { border-radius: 3px; padding: 0px 0.4em; }

.monaco-editor-hover .monaco-tokenized-source { white-space: pre-wrap; word=
-break: break-all; }

.monaco-editor .detected-link, .monaco-editor .detected-link-active { text-=
decoration: underline; }

.monaco-editor .detected-link-active { cursor: pointer; }

.monaco-editor .parameter-hints-widget { z-index: 3; display: flex; flex-di=
rection: column; line-height: 1.5em; }

.monaco-editor .parameter-hints-widget > .wrapper { max-width: 440px; displ=
ay: flex; flex-direction: column; }

.monaco-editor .parameter-hints-widget.multiple { min-height: 3.3em; paddin=
g: 0px 0px 0px 1.9em; }

.monaco-editor .parameter-hints-widget.visible { transition: left 0.05s eas=
e-in-out 0s; }

.monaco-editor .parameter-hints-widget p, .monaco-editor .parameter-hints-w=
idget ul { margin: 8px 0px; }

.monaco-editor .parameter-hints-widget .body, .monaco-editor .parameter-hin=
ts-widget .monaco-scrollable-element { display: flex; flex-direction: colum=
n; }

.monaco-editor .parameter-hints-widget .signature { padding: 4px 5px; }

.monaco-editor .parameter-hints-widget .docs { padding: 0px 10px 0px 5px; w=
hite-space: pre-wrap; }

.monaco-editor .parameter-hints-widget .buttons { position: absolute; displ=
ay: none; bottom: 0px; left: 0px; }

.monaco-editor .parameter-hints-widget.multiple .buttons { display: block; =
}

.monaco-editor .parameter-hints-widget.multiple .button { position: absolut=
e; left: 2px; width: 16px; height: 16px; background-repeat: no-repeat; curs=
or: pointer; }

.monaco-editor .parameter-hints-widget .button.previous { bottom: 24px; bac=
kground-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3d=
y53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHBhdGggZmlsbD0iIzQyNDI0=
MiIgZD0iTTEwLjggOS41bC45LS45TDguMSA1IDQuMiA4LjZsLjkuOSAzLTIuNyAyLjcgMi43eiI=
vPjwvc3ZnPg=3D=3D"); }

.monaco-editor .parameter-hints-widget .button.next { bottom: 0px; backgrou=
nd-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My=
5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHBhdGggZmlsbD0iIzQyNDI0MiIgZ=
D0iTTUuMSA1bC0uOS45IDMuNiAzLjYgMy45LTMuNi0xLS45LTMgMi43TDUuMSA1eiIvPjwvc3Zn=
Pg=3D=3D"); }

.monaco-editor .parameter-hints-widget .overloads { position: absolute; dis=
play: none; text-align: center; bottom: 14px; left: 0px; width: 22px; heigh=
t: 12px; line-height: 12px; opacity: 0.5; }

.monaco-editor .parameter-hints-widget.multiple .overloads { display: block=
; }

.monaco-editor .parameter-hints-widget .signature .parameter { display: inl=
ine-block; }

.monaco-editor .parameter-hints-widget .signature .parameter.active { font-=
weight: 700; text-decoration: underline; }

.monaco-editor .parameter-hints-widget .documentation-parameter > .paramete=
r { font-weight: 700; margin-right: 0.5em; }

.monaco-editor.hc-black .parameter-hints-widget .button.previous, .monaco-e=
ditor.vs-dark .parameter-hints-widget .button.previous { background-image: =
url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAw=
MC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHBhdGggZmlsbD0iI0U4RThFOCIgZD0iTTEwLjg=
gOS41bC45LS45TDguMSA1IDQuMiA4LjZsLjkuOSAzLTIuNyAyLjcgMi43eiIvPjwvc3ZnPg=3D=
=3D"); }

.monaco-editor.hc-black .parameter-hints-widget .button.next, .monaco-edito=
r.vs-dark .parameter-hints-widget .button.next { background-image: url("dat=
a:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmci=
IHZpZXdCb3g9IjAgMCAxNiAxNiI+PHBhdGggZmlsbD0iI0U4RThFOCIgZD0iTTUuMSA1bC0uOS4=
5IDMuNiAzLjYgMy45LTMuNi0xLS45LTMgMi43TDUuMSA1eiIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor .lightbulb-glyph { display: flex; align-items: center; justi=
fy-content: center; height: 16px; width: 16px; }

.monaco-editor .lightbulb-glyph.hidden { display: none; visibility: hidden;=
 }

.monaco-editor .lightbulb-glyph:hover { cursor: pointer; }

.monaco-editor.vs .lightbulb-glyph { background: url("data:image/svg+xml;ba=
se64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMC=
AxNiAxNiIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgMTYgMTYiIGhlaWdodD0iMTYiIHdpZ=
HRoPSIxNiI+PHBhdGggZmlsbD0iI0Y2RjZGNiIgZD0iTTEzLjUgNC4yQzEzLjEgMi4xIDEwLjgg=
MCA5LjMgMEg2LjdjLS40IDAtLjYuMi0uNi4yQzQgLjggMi41IDIuNyAyLjUgNC45YzAgLjUtLjE=
gMi4zIDEuNyAzLjguNS41IDEuMiAyIDEuMyAyLjR2My4zTDcuMSAxNmgybDEuNS0xLjZWMTFjLj=
EtLjQuOC0xLjkgMS4zLTIuMyAxLjEtLjkgMS41LTEuOSAxLjYtMi43VjQuMnoiLz48Zz48ZyBma=
WxsPSIjODQ4NDg0Ij48cGF0aCBkPSJNNi41IDEyaDN2MWgtM3pNNy41IDE1aDEuMWwuOS0xaC0z=
eiIvPjwvZz48cGF0aCBmaWxsPSIjZmMwIiBkPSJNMTIuNiA1YzAtMi4zLTEuOC00LjEtNC4xLTQ=
uMS0uMSAwLTEuNC4xLTEuNC4xLTIuMS4zLTMuNyAyLTMuNyA0IDAgLjEtLjIgMS42IDEuNCAzIC=
43LjcgMS41IDIuNCAxLjYgMi45bC4xLjFoM2wuMS0uMmMuMS0uNS45LTIuMiAxLjYtMi45IDEuN=
i0xLjMgMS40LTIuOCAxLjQtMi45em0tMyAxbC0uNSAzaC0uNlY2YzEuMSAwIC45LTEgLjktMUg2=
LjV2LjFjMCAuMi4xLjkgMSAuOXYzSDdsLS4yLS43TDYuNSA2Yy0uNyAwLS45LS40LTEtLjd2LS4=
0YzAtLjguOS0uOS45LS45aDMuMXMxIC4xIDEgMWMwIDAgLjEgMS0uOSAxeiIvPjwvZz48cGF0aC=
BmaWxsPSIjRjBFRkYxIiBkPSJNMTAuNSA1YzAtLjktMS0xLTEtMUg2LjRzLS45LjEtLjkuOXYuN=
GMwIC4zLjMuNy45LjdsLjQgMi4zLjIuN2guNVY2Yy0xIDAtMS0uNy0xLS45VjVoM3MuMSAxLS45=
IDF2M2guNmwuNS0zYy45IDAgLjgtMSAuOC0xeiIvPjwvc3ZnPg=3D=3D") 50% center no-re=
peat; }

.monaco-editor.hc-black .lightbulb-glyph, .monaco-editor.vs-dark .lightbulb=
-glyph { background: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDo=
vL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiIgZW5hYmxlLWJhY2tncm=
91bmQ9Im5ldyAwIDAgMTYgMTYiIGhlaWdodD0iMTYiIHdpZHRoPSIxNiI+PHBhdGggZmlsbD0iI=
zFFMUUxRSIgZD0iTTEzLjUgNC4yQzEzLjEgMi4xIDEwLjggMCA5LjMgMEg2LjdjLS40IDAtLjYu=
Mi0uNi4yQzQgLjggMi41IDIuNyAyLjUgNC45YzAgLjUtLjEgMi4zIDEuNyAzLjguNS41IDEuMiA=
yIDEuMyAyLjR2My4zTDcuMSAxNmgybDEuNS0xLjZWMTFjLjEtLjQuOC0xLjkgMS4zLTIuMyAxLj=
EtLjkgMS41LTEuOSAxLjYtMi43VjQuMnoiLz48Zz48ZyBmaWxsPSIjQzVDNUM1Ij48cGF0aCBkP=
SJNNi41IDEyaDN2MWgtM3pNNy41IDE1aDEuMWwuOS0xaC0zeiIvPjwvZz48cGF0aCBmaWxsPSIj=
RERCMjA0IiBkPSJNMTIuNiA1YzAtMi4zLTEuOC00LjEtNC4xLTQuMS0uMSAwLTEuNC4xLTEuNC4=
xLTIuMS4zLTMuNyAyLTMuNyA0IDAgLjEtLjIgMS42IDEuNCAzIC43LjcgMS41IDIuNCAxLjYgMi=
45bC4xLjFoM2wuMS0uMmMuMS0uNS45LTIuMiAxLjYtMi45IDEuNi0xLjMgMS40LTIuOCAxLjQtM=
i45em0tMyAxbC0uNSAzaC0uNlY2YzEuMSAwIC45LTEgLjktMUg2LjV2LjFjMCAuMi4xLjkgMSAu=
OXYzSDdsLS4yLS43TDYuNSA2Yy0uNyAwLS45LS40LTEtLjd2LS40YzAtLjguOS0uOS45LS45aDM=
uMXMxIC4xIDEgMWMwIDAgLjEgMS0uOSAxeiIvPjwvZz48cGF0aCBmaWxsPSIjMjUyNTI2IiBkPS=
JNMTAuNSA1YzAtLjktMS0xLTEtMUg2LjRzLS45LjEtLjkuOXYuNGMwIC4zLjMuNy45LjdsLjQgM=
i4zLjIuN2guNVY2Yy0xIDAtMS0uNy0xLS45VjVoM3MuMSAxLS45IDF2M2guNmwuNS0zYy45IDAg=
LjgtMSAuOC0xeiIvPjwvc3ZnPg=3D=3D") 50% center no-repeat; }

.monaco-editor .zone-widget .zone-widget-container.reference-zone-widget { =
border-top-width: 1px; border-bottom-width: 1px; }

.monaco-editor .zone-widget .zone-widget-container.reference-zone-widget.re=
sults-loaded { transition: height 0.1s ease-in 0s; }

.monaco-editor .reference-zone-widget .inline { display: inline-block; vert=
ical-align: top; }

.monaco-editor .reference-zone-widget .messages { height: 100%; width: 100%=
; text-align: center; padding: 3em 0px; }

.monaco-editor .reference-zone-widget .ref-tree { line-height: 22px; font-s=
ize: 13px; }

.monaco-editor .reference-zone-widget .ref-tree .reference { text-overflow:=
 ellipsis; overflow: hidden; }

.monaco-editor .reference-zone-widget .ref-tree .reference-file { display: =
flex; justify-content: space-between; align-items: center; }

.monaco-editor .reference-zone-widget .monaco-count-badge { margin-right: 0=
.5em; height: 15px; padding: 0px 0.5em 0.5em; }

.monaco-editor.hc-black .reference-zone-widget .ref-tree .reference-file { =
font-weight: 700; display: flex; justify-content: space-between; }

.monaco-editor .rename-box { z-index: 7; color: inherit; }

.monaco-editor .rename-box .rename-input { padding: 4px; }

.monaco-editor.vs .snippet-placeholder { background-color: rgba(10, 50, 100=
, 0.1); }

.monaco-editor.hc-black .snippet-placeholder, .monaco-editor.vs-dark .snipp=
et-placeholder { background-color: rgba(125, 125, 125, 0.1); }

.monaco-editor.vs .finish-snippet-placeholder { outline: rgba(10, 50, 100, =
0.5) solid 1px; }

.monaco-editor.hc-black .finish-snippet-placeholder, .monaco-editor.vs-dark=
 .finish-snippet-placeholder { outline: rgb(82, 82, 82) solid 1px; }

.monaco-editor .suggest-widget { z-index: 4; width: 430px; }

.monaco-editor .suggest-widget > .details, .monaco-editor .suggest-widget >=
 .message, .monaco-editor .suggest-widget > .tree { width: 100%; border-sty=
le: solid; border-width: 1px; box-sizing: border-box; }

.monaco-editor.hc-black .suggest-widget > .details, .monaco-editor.hc-black=
 .suggest-widget > .message, .monaco-editor.hc-black .suggest-widget > .tre=
e { border-width: 2px; }

.monaco-editor .suggest-widget.docs-side { width: 660px; }

.monaco-editor .suggest-widget.docs-side > .details, .monaco-editor .sugges=
t-widget.docs-side > .tree { width: 50%; float: left; }

.monaco-editor .suggest-widget.docs-side.list-right > .details, .monaco-edi=
tor .suggest-widget.docs-side.list-right > .tree { float: right; }

.monaco-editor .suggest-widget > .message { padding-left: 22px; }

.monaco-editor .suggest-widget > .tree { height: 100%; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row { display: fle=
x; box-sizing: border-box; padding-right: 10px; background-repeat: no-repea=
t; background-position: 2px 2px; white-space: nowrap; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row > .contents { =
flex: 1 1 0%; height: 100%; overflow: hidden; padding-left: 2px; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row > .contents > =
.main { display: flex; overflow: hidden; text-overflow: ellipsis; }

.monaco-editor .suggest-widget:not(.frozen) .monaco-highlighted-label .high=
light { font-weight: 700; }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element > .bod=
y > .header > .close, .monaco-editor .suggest-widget .monaco-list .monaco-l=
ist-row > .contents > .main > .readMore { opacity: 0.6; background-position=
: 50% center; background-repeat: no-repeat; background-size: 70%; cursor: p=
ointer; }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element > .bod=
y > .header > .close { background-image: url("data:image/svg+xml;base64,PHN=
2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PS=
IxNiIgdmlld0JveD0iMyAzIDE2IDE2IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDMgMyAxNiAxN=
iI+PHBvbHlnb24gZmlsbD0iIzQyNDI0MiIgcG9pbnRzPSIxMi41OTcsMTEuMDQyIDE1LjQsMTMu=
ODQ1IDEzLjg0NCwxNS40IDExLjA0MiwxMi41OTggOC4yMzksMTUuNCA2LjY4MywxMy44NDUgOS4=
0ODUsMTEuMDQyIDYuNjgzLDguMjM5IDguMjM4LDYuNjgzIDExLjA0Miw5LjQ4NiAxMy44NDUsNi=
42ODMgMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=3D"); float: right; margin-right: 5px; =
}

.monaco-editor .suggest-widget .monaco-list .monaco-list-row > .contents > =
.main > .readMore { background-image: url("data:image/svg+xml;base64,PHN2Zy=
B4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxN=
iI+PHBhdGggZD0iTTggMWMtMy44NjUgMC03IDMuMTM1LTcgN3MzLjEzNSA3IDcgNyA3LTMuMTM1=
IDctNy0zLjEzNS03LTctN3ptMSAxMmgtMnYtN2gydjd6bTAtOGgtMnYtMmgydjJ6IiBmaWxsPSI=
jMUJBMUUyIi8+PHBhdGggZD0iTTcgNmgydjdoLTJ2LTd6bTAtMWgydi0yaC0ydjJ6IiBmaWxsPS=
IjZmZmIi8+PC9zdmc+"); }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element > .bod=
y > .header > .close:hover, .monaco-editor .suggest-widget .monaco-list .mo=
naco-list-row > .contents > .main > .readMore:hover { opacity: 1; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row > .contents > =
.main > .type-label { margin-left: 0.8em; flex: 1 1 0%; text-align: right; =
overflow: hidden; text-overflow: ellipsis; opacity: 0.7; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row > .contents > =
.main > .type-label > .monaco-tokenized-source { display: inline; }

.monaco-editor .suggest-widget.docs-below .monaco-list .monaco-list-row.foc=
used > .contents > .main > .readMore, .monaco-editor .suggest-widget.docs-s=
ide .monaco-list .monaco-list-row.focused > .contents > .main > .readMore, =
.monaco-editor .suggest-widget.docs-side .monaco-list .monaco-list-row.focu=
sed > .contents > .main > .type-label, .monaco-editor .suggest-widget .mona=
co-list .monaco-list-row > .contents > .main > .readMore, .monaco-editor .s=
uggest-widget .monaco-list .monaco-list-row > .contents > .main > .type-lab=
el { display: none; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row.focused > .con=
tents > .main > .readMore, .monaco-editor .suggest-widget .monaco-list .mon=
aco-list-row.focused > .contents > .main > .type-label { display: inline; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon { displa=
y: block; height: 16px; width: 16px; background-repeat: no-repeat; backgrou=
nd-size: 80%; background-position: 50% center; background-image: url("data:=
image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIH=
ZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFja=
XR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxsOiNmNmY2ZjZ9Lmljb24tdnMtYmd7=
ZmlsbDojNDI0MjQyfTwvc3R5bGU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW5=
0IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLX=
ZzLW91dCIgZD0iTTE2IDEwYzAgMi4yMDUtMS43OTQgNC00IDQtMS44NTggMC0zLjQxMS0xLjI3O=
S0zLjg1OC0zaC0uOTc4bDIuMzE4IDRIMHYtMS43MDNsMi0zLjQwOFYwaDExdjYuMTQyYzEuNzIx=
LjQ0NyAzIDIgMyAzLjg1OHoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYmc=
iIGQ9Ik0xMiAxdjQuNzVBNC4yNTUgNC4yNTUgMCAwIDAgNy43NSAxMGgtLjczMkw0LjI3NSA1Lj=
I2OSAzIDcuNDQyVjFoOXpNNy43NDcgMTRMNC4yNjkgOCAuNzQ4IDE0aDYuOTk5ek0xNSAxMGEzI=
DMgMCAxIDEtNiAwIDMgMyAwIDAgMSA2IDB6IiBpZD0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.construc=
tor, .monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.fun=
ction, .monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.m=
ethod { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaH=
R0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY=
29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91=
dHtmaWxsOiNmNmY2ZjZ9Lmljb24tdnMtZmd7ZmlsbDojZjBlZmYxfS5pY29uLXZzLWFjdGlvbi1=
wdXJwbGV7ZmlsbDojNjUyZDkwfTwvc3R5bGU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW=
5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzP=
SJpY29uLXZzLW91dCIgZD0iTTE1IDMuMzQ5djguNDAzTDguOTc1IDE2SDguMDdMMSAxMS41ODJW=
My4zMjdMNy41OTUgMGgxLjExOEwxNSAzLjM0OXoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M=
9Imljb24tdnMtZmciIGQ9Ik0xMi43MTUgNC4zOThMOC40ODcgNy4wMiAzLjU2NSA0LjI3Mmw0Lj=
U3OC0yLjMwOSA0LjU3MiAyLjQzNXpNMyA1LjEwMmw1IDIuNzkydjUuNzA1bC01LTMuMTI1VjUuM=
TAyem02IDguNDM0VjcuODc4bDQtMi40OHY1LjMxN2wtNCAyLjgyMXoiIGlkPSJpY29uRmciLz48=
cGF0aCBjbGFzcz0iaWNvbi12cy1hY3Rpb24tcHVycGxlIiBkPSJNOC4xNTYuODM3TDIgMy45NDJ=
2Ny4wODVMOC41MTcgMTUuMSAxNCAxMS4yMzNWMy45NUw4LjE1Ni44Mzd6bTQuNTU5IDMuNTYxTD=
guNDg3IDcuMDIgMy41NjUgNC4yNzJsNC41NzgtMi4zMDkgNC41NzIgMi40MzV6TTMgNS4xMDJsN=
SAyLjc5MnY1LjcwNWwtNS0zLjEyNVY1LjEwMnptNiA4LjQzNFY3Ljg3OGw0LTIuNDh2NS4zMTds=
LTQgMi44MjF6IiBpZD0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.field { =
background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3=
d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhb=
nZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxs=
OiNmNmY2ZjZ9Lmljb24tdnMtZmd7ZmlsbDojZjBlZmYxfS5pY29uLXZzLWFjdGlvbi1ibHVle2Z=
pbGw6IzAwNTM5Y308L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3BhcmVudC=
IgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi12c=
y1vdXQiIGQ9Ik0wIDEwLjczNlY0LjVMOSAwbDcgMy41djYuMjM2bC05IDQuNS03LTMuNXoiIGlk=
PSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLWJsdWUiIGQ9Ik05IDFMMSA=
1djVsNiAzIDgtNFY0TDkgMXpNNyA2Ljg4MkwzLjIzNiA1IDkgMi4xMTggMTIuNzY0IDQgNyA2Lj=
g4MnoiIGlkPSJpY29uQmciLz48cGF0aCBjbGFzcz0iaWNvbi12cy1mZyIgZD0iTTkgMi4xMThMM=
TIuNzY0IDQgNyA2Ljg4MiAzLjIzNiA1IDkgMi4xMTh6IiBpZD0iaWNvbkZnIi8+PC9zdmc+"); =
}

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.event { =
background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3=
d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhb=
nZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxs=
OiNmNmY2ZjZ9Lmljb24tdnMtYWN0aW9uLW9yYW5nZXtmaWxsOiNjMjdkMWF9PC9zdHlsZT48cGF=
0aCBjbGFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwVjBoMTZ2MTZ6Ii=
BpZD0iY2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMTQgMS40MTRMOS40M=
TQgNkgxNHYxLjQxNEw1LjQxNCAxNkgzdi0xLjIzNEw1LjM3MSAxMEgyVjguNzY0TDYuMzgyIDBI=
MTR2MS40MTR6IiBpZD0ib3V0bGluZSIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7Ii8+PHBhdGggY2x=
hc3M9Imljb24tdnMtYWN0aW9uLW9yYW5nZSIgZD0iTTcgN2g2bC04IDhINGwyLjk4NS02SDNsNC=
04aDZMNyA3eiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.operator=
 { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDo=
vL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLW=
NhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtma=
WxsOiNmNmY2ZjZ9Lmljb24tdnMtZmd7ZmlsbDojZjBlZmYxfS5pY29uLXZzLWFjdGlvbi1ibHVl=
e2ZpbGw6IzAwNTM5Y308L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3BhcmV=
udCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi=
12cy1vdXQiIGQ9Ik0xNiAxNkgwVjBoMTZ2MTZ6IiBpZD0ib3V0bGluZSIgc3R5bGU9ImRpc3BsY=
Xk6IG5vbmU7Ii8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLWJsdWUiIGQ9Ik0xIDF2MTRo=
MTRWMUgxem02IDEySDN2LTFoNHYxem0wLTNIM1Y5aDR2MXptMC01SDV2Mkg0VjVIMlY0aDJWMmg=
xdjJoMnYxem0zLjI4MSA4SDguNzE5bDMtNGgxLjU2M2wtMy4wMDEgNHpNMTQgNUg5VjRoNXYxei=
IgaWQ9Imljb25CZyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWZnIiBkPSJNNyA1SDV2Mkg0VjVIM=
lY0aDJWMmgxdjJoMnYxem03LTFIOXYxaDVWNHpNNyA5SDN2MWg0Vjl6bTAgM0gzdjFoNHYtMXpt=
My4yODEgMWwzLTRoLTEuNTYzbC0zIDRoMS41NjN6IiBpZD0iaWNvbkZnIiBzdHlsZT0iZGlzcGx=
heTogbm9uZTsiLz48L3N2Zz4=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.variable=
 { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDo=
vL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLW=
NhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtma=
WxsOiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfS5pY29uLXZzLWZne2ZpbGw6I2Yw=
ZWZmMX0uaWNvbi12cy1hY3Rpb24tYmx1ZXtmaWxsOiMwMDUzOWN9PC9zdHlsZT48cGF0aCBjbGF=
zcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwVjBoMTZ2MTZ6IiBpZD0iY2=
FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMTEgM3YxLjAxNUw4LjczMyAyL=
jg4MiA1IDQuNzQ5VjNIMHYxMGg1di0xLjg1OWwyLjE1NiAxLjA3N0wxMSAxMC4yOTVWMTNoNVYz=
aC01eiIgaWQ9Im91dGxpbmUiIHN0eWxlPSJkaXNwbGF5OiBub25lOyIvPjxwYXRoIGNsYXNzPSJ=
pY29uLXZzLWJnIiBkPSJNMiA1djZoMnYxSDFWNGgzdjFIMnptMTAgNnYxaDNWNGgtM3YxaDJ2Nm=
gtMnoiIGlkPSJpY29uQmciLz48cGF0aCBjbGFzcz0iaWNvbi12cy1mZyIgZD0iTTcuMTU2IDcuM=
TU2bC0xLjU3OC0uNzg5IDMuMTU2LTEuNTc4IDEuNTc4Ljc4OS0zLjE1NiAxLjU3OHoiIGlkPSJp=
Y29uRmciIHN0eWxlPSJkaXNwbGF5OiBub25lOyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWFjdGl=
vbi1ibHVlIiBkPSJNOC43MzMgNEw0IDYuMzY3djMuMTU2TDcuMTU2IDExLjFsNC43MzMtMi4zNj=
dWNS41NzhMOC43MzMgNHpNNy4xNTYgNy4xNTZsLTEuNTc4LS43ODkgMy4xNTYtMS41NzggMS41N=
zguNzg5LTMuMTU2IDEuNTc4eiIgaWQ9ImNvbG9ySW1wb3J0YW5jZSIvPjwvc3ZnPg=3D=3D"); =
}

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.class { =
background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3=
d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhb=
nZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxs=
OiNmNmY2ZjZ9Lmljb24tdnMtYWN0aW9uLW9yYW5nZXtmaWxsOiNjMjdkMWF9PC9zdHlsZT48cGF=
0aCBjbGFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwVjBoMTZ2MTZ6Ii=
BpZD0iY2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMTYgNi41ODZsLTMtM=
0wxMS41ODYgNUg5LjQxNGwxLTEtNC00aC0uODI4TDAgNS41ODZ2LjgyOGw0IDRMNi40MTQgOEg3=
djVoMS41ODZsMyAzaC44MjhMMTYgMTIuNDE0di0uODI4TDEzLjkxNCA5LjUgMTYgNy40MTR2LS4=
4Mjh6IiBpZD0ib3V0bGluZSIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWFjdGlvbi1vcmFuZ2UiIG=
Q9Ik0xMyAxMGwyIDItMyAzLTItMiAxLTFIOFY3SDZMNCA5IDEgNmw1LTUgMyAzLTIgMmg1bDEtM=
SAyIDItMyAzLTItMiAxLTFIOXY0bDIuOTk5LjAwMkwxMyAxMHoiIGlkPSJpY29uQmciLz48L3N2=
Zz4=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.interfac=
e { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cD=
ovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uL=
WNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtm=
aWxsOiNmNmY2ZjZ9Lmljb24tdnMtZmd7ZmlsbDojZjBlZmYxfS5pY29uLXZzLWFjdGlvbi1ibHV=
le2ZpbGw6IzAwNTM5Y308L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3Bhcm=
VudCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvb=
i12cy1vdXQiIGQ9Ik0xMS41IDEyYy0xLjkxNSAwLTMuNjAyLTEuMjQxLTQuMjI4LTNoLTEuNDFh=
My4xMSAzLjExIDAgMCAxLTIuNzM3IDEuNjI1QzEuNDAyIDEwLjYyNSAwIDkuMjIzIDAgNy41czE=
uNDAyLTMuMTI1IDMuMTI1LTMuMTI1YzEuMTY1IDAgMi4yMDEuNjM5IDIuNzM3IDEuNjI1aDEuND=
FjLjYyNi0xLjc1OSAyLjMxMy0zIDQuMjI4LTNDMTMuOTgxIDMgMTYgNS4wMTkgMTYgNy41UzEzL=
jk4MSAxMiAxMS41IDEyeiIgaWQ9Im91dGxpbmUiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1mZyIg=
ZD0iTTExLjUgOUExLjUwMSAxLjUwMSAwIDEgMSAxMyA3LjVjMCAuODI2LS42NzMgMS41LTEuNSA=
xLjV6IiBpZD0iaWNvbkZnIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLWJsdWUiIGQ9Ik=
0xMS41IDRhMy40OSAzLjQ5IDAgMCAwLTMuNDUgM0g1LjE4NUEyLjEyMiAyLjEyMiAwIDAgMCAxI=
DcuNWEyLjEyMyAyLjEyMyAwIDEgMCA0LjE4NS41SDguMDVhMy40OSAzLjQ5IDAgMCAwIDMuNDUg=
MyAzLjUgMy41IDAgMSAwIDAtN3ptMCA1Yy0uODI3IDAtMS41LS42NzMtMS41LTEuNVMxMC42NzM=
gNiAxMS41IDZzMS41LjY3MyAxLjUgMS41UzEyLjMyNyA5IDExLjUgOXoiIGlkPSJpY29uQmciLz=
48L3N2Zz4=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.struct {=
 background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL=
3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNh=
bnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWx=
sOiNmNmY2ZjZ9Lmljb24tdnMtYWN0aW9uLWJsdWV7ZmlsbDojMDA1MzljfTwvc3R5bGU+PHBhdG=
ggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIga=
WQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTkgMTRWOEg3djZIMVYy=
aDE0djEySDl6IiBpZD0ib3V0bGluZSIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7Ii8+PHBhdGggY2x=
hc3M9Imljb24tdnMtYWN0aW9uLWJsdWUiIGQ9Ik0xMCA5aDR2NGgtNFY5em0tOCA0aDRWOUgydj=
R6TTIgM3Y0aDEyVjNIMnoiIGlkPSJpY29uQmciLz48L3N2Zz4=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.type-par=
ameter { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0ia=
HR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5p=
Y29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW9=
1dHtmaWxsOiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfTwvc3R5bGU+PHBhdGggY2=
xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9I=
mNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTEwLjcwMiAxMC41bDItMi0y=
LTIgLjUtLjVIMTB2NWgxdjNINXYtM2gxVjZINC43OThsLjUuNS0yIDIgMiAyTDMgMTIuNzk3bC0=
zLTNWNy4yMDFsMy0zVjJoMTB2Mi4yMDFsMyAzdjIuNTk2bC0zIDMtMi4yOTgtMi4yOTd6IiBpZD=
0ib3V0bGluZSIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7Ii8+PHBhdGggY2xhc3M9Imljb24tdnMtY=
mciIGQ9Ik00IDNoOHYyaC0xdi0uNWMwLS4yNzctLjIyNC0uNS0uNS0uNUg5djcuNWMwIC4yNzUu=
MjI0LjUuNS41aC41djFINnYtMWguNWEuNS41IDAgMCAwIC41LS41VjRINS41YS41LjUgMCAwIDA=
tLjUuNVY1SDRWM3pNMyA1LjYxNUwuMTE2IDguNSAzIDExLjM4M2wuODg0LS44ODMtMi0yIDItMk=
wzIDUuNjE1em0xMCAwbC0uODg0Ljg4NSAyIDItMiAyIC44ODQuODgzTDE1Ljg4NCA4LjUgMTMgN=
S42MTV6IiBpZD0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.module {=
 background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL=
3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNh=
bnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWx=
sOiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfTwvc3R5bGU+PHBhdGggY2xhc3M9Im=
ljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZhc=
yIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTkuMjYgMTEuOTg0bC45NzgtLjAyMWEu=
OTYyLjk2MiAwIDAgMCAuMDktLjAwNmMuMDExLS4wNjMuMDI2LS4xNzkuMDI2LS4zNjFWOS42ODh=
jMC0uNjc5LjE4NS0xLjI1Ny41My0xLjcwNy0uMzQ2LS40NTItLjUzLTEuMDMtLjUzLTEuNzA1Vj=
QuMzVjMC0uMTY3LS4wMjEtLjI1OS0uMDM0LS4zMDJMOS4yNiA0LjAyVi45NzNsMS4wMTEuMDExY=
zIuMTY3LjAyNCAzLjQwOSAxLjE1NiAzLjQwOSAzLjEwNXYxLjk2MmMwIC4zNTEuMDcxLjQ2MS4w=
NzIuNDYybC45MzYuMDYuMDUzLjkyN3YxLjkzNmwtLjkzNi4wNjFjLS4wNzYuMDE2LS4xMjUuMTQ=
2LS4xMjUuNDI0djIuMDE3YzAgLjkxNC0uMzMyIDMuMDQzLTMuNDA4IDMuMDc4bC0xLjAxMi4wMT=
F2LTMuMDQzem0tMy41MjEgMy4wMzJjLTMuMDg5LS4wMzUtMy40MjItMi4xNjQtMy40MjItMy4wN=
zhWOS45MjFjMC0uMzI3LS4wNjYtLjQzMi0uMDY3LS40MzNsLS45MzctLjA2LS4wNjMtLjkyOVY2=
LjU2M2wuOTQyLS4wNmMuMDU4IDAgLjEyNS0uMTE0LjEyNS0uNDUyVjQuMDljMC0xLjk0OSAxLjI=
0OC0zLjA4MSAzLjQyMi0zLjEwNUw2Ljc1Ljk3M1Y0LjAybC0uOTc1LjAyM2EuNTcyLjU3MiAwID=
AgMC0uMDkzLjAxYy4wMDYuMDIxLS4wMTkuMTE1LS4wMTkuMjk3djEuOTI4YzAgLjY3NS0uMTg2I=
DEuMjUzLS41MzQgMS43MDUuMzQ4LjQ1LjUzNCAxLjAyOC41MzQgMS43MDd2MS45MDdjMCAuMTc1=
LjAxNC4yOTEuMDI3LjM2My4wMjMuMDAyIDEuMDYuMDI1IDEuMDYuMDI1djMuMDQzbC0xLjAxMS0=
uMDEyeiIgaWQ9Im91dGxpbmUiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1iZyIgZD0iTTUuNzUgMT=
QuMDE2Yy0xLjYyMy0uMDE5LTIuNDM0LS43MTEtMi40MzQtMi4wNzhWOS45MjFjMC0uOTAyLS4zN=
TUtMS4zNzYtMS4wNjYtMS40MjJ2LS45OThjLjcxMS0uMDQ1IDEuMDY2LS41MjkgMS4wNjYtMS40=
NDlWNC4wOWMwLTEuMzg1LjgxMS0yLjA4NyAyLjQzNC0yLjEwNXYxLjA2Yy0uNzI1LjAxNy0xLjA=
4Ny40NTMtMS4wODcgMS4zMDV2MS45MjhjMCAuOTItLjQ1NCAxLjQ4OC0xLjM2IDEuNzAyVjhjLj=
kwNy4yMDEgMS4zNi43NjMgMS4zNiAxLjY4OHYxLjkwN2MwIC40ODguMDgxLjgzNS4yNDMgMS4wN=
DIuMTYyLjIwOC40NDMuMzE2Ljg0NC4zMjV2MS4wNTR6bTcuOTktNS41MTdjLS43MDYuMDQ1LTEu=
MDYuNTItMS4wNiAxLjQyMnYyLjAxN2MwIDEuMzY3LS44MDcgMi4wNi0yLjQyIDIuMDc4di0xLjA=
1M2MuMzk2LS4wMDkuNjc4LS4xMTguODQ0LS4zMjguMTY3LS4yMS4yNS0uNTU2LjI1LTEuMDM5Vj=
kuNjg4YzAtLjkyNS40NDktMS40ODggMS4zNDctMS42ODh2LS4wMjFjLS44OTgtLjIxNC0xLjM0N=
y0uNzgyLTEuMzQ3LTEuNzAyVjQuMzVjMC0uODUyLS4zNjQtMS4yODgtMS4wOTQtMS4zMDZ2LTEu=
MDZjMS42MTMuMDE4IDIuNDIuNzIgMi40MiAyLjEwNXYxLjk2MmMwIC45Mi4zNTQgMS40MDQgMS4=
wNiAxLjQ0OXYuOTk5eiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.property=
 { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDo=
vL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLW=
NhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtma=
WxsOiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfTwvc3R5bGU+PHBhdGggY2xhc3M9=
Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZ=
hcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTE2IDUuNWE1LjUgNS41IDAgMCAxLT=
UuNSA1LjVjLS4yNzUgMC0uNTQzLS4wMjctLjgwNy0uMDY2bC0uMDc5LS4wMTJhNS40MjkgNS40M=
jkgMCAwIDEtLjgxLS4xOTJsLTQuNTM3IDQuNTM3Yy0uNDcyLjQ3My0xLjEuNzMzLTEuNzY3Ljcz=
M3MtMS4yOTUtLjI2LTEuNzY4LS43MzJhMi41MDIgMi41MDIgMCAwIDEgMC0zLjUzNWw0LjUzNy0=
0LjUzN2E1LjQ1MiA1LjQ1MiAwIDAgMS0uMTkxLS44MTJjLS4wMDUtLjAyNS0uMDA4LS4wNTEtLj=
AxMi0uMDc3QTUuNTAzIDUuNTAzIDAgMCAxIDUgNS41YTUuNSA1LjUgMCAxIDEgMTEgMHoiIGlkP=
SJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYmciIGQ9Ik0xNSA1LjVhNC41IDQuNSAw=
IDAgMS00LjUgNC41Yy0uNjkzIDAtMS4zNDItLjE3LTEuOTI5LS40NWwtNS4wMSA1LjAxYy0uMjk=
zLjI5NC0uNjc3LjQ0LTEuMDYxLjQ0cy0uNzY4LS4xNDYtMS4wNjEtLjQzOWExLjUgMS41IDAgMC=
AxIDAtMi4xMjFsNS4wMS01LjAxQTQuNDgzIDQuNDgzIDAgMCAxIDYgNS41IDQuNSA0LjUgMCAwI=
DEgMTAuNSAxYy42OTMgMCAxLjM0Mi4xNyAxLjkyOS40NUw5LjYzNiA0LjI0M2wyLjEyMSAyLjEy=
MSAyLjc5My0yLjc5M2MuMjguNTg3LjQ1IDEuMjM2LjQ1IDEuOTI5eiIgaWQ9Imljb25CZyIvPjw=
vc3ZnPg=3D=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.unit { b=
ackground-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d=
3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhbn=
Zhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxsO=
iNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfS5pY29uLXZzLWZne2ZpbGw6I2YwZWZm=
MX08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3BhcmVudCIgZD0iTTE2IDE=
2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1vdXQiIGQ9Ik=
0xNiAxMS4wMTNIMVY0aDE1djcuMDEzeiIgaWQ9Im91dGxpbmUiLz48cGF0aCBjbGFzcz0iaWNvb=
i12cy1mZyIgZD0iTTggOUg3VjZoM3YzSDlWN0g4djJ6TTQgN2gxdjJoMVY2SDN2M2gxVjd6bTgg=
MGgxdjJoMVY2aC0zdjNoMVY3eiIgaWQ9Imljb25GZyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWJ=
nIiBkPSJNMiA1djVoMTNWNUgyem00IDRINVY3SDR2MkgzVjZoM3Yzem00IDBIOVY3SDh2Mkg3Vj=
ZoM3Yzem00IDBoLTFWN2gtMXYyaC0xVjZoM3YzeiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"=
); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.constant=
 { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDo=
vL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLW=
NhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtma=
WxsOiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfS5pY29uLXZzLWZne2ZpbGw6I2Yw=
ZWZmMX0uaWNvbi12cy1hY3Rpb24tYmx1ZXtmaWxsOiMwMDUzOWN9PC9zdHlsZT48cGF0aCBjbGF=
zcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwVjBoMTZ2MTZ6IiBpZD0iY2=
FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMi44NzkgMTRMMSAxMi4xMjFWM=
y44NzlMMi44NzkgMmgxMC4yNDJMMTUgMy44Nzl2OC4yNDJMMTMuMTIxIDE0SDIuODc5eiIgaWQ9=
Im91dGxpbmUiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1mZyIgZD0iTTEyLjI5MyA0SDMuNzA3TDM=
gNC43MDd2Ni41ODZsLjcwNy43MDdoOC41ODZsLjcwNy0uNzA3VjQuNzA3TDEyLjI5MyA0ek0xMS=
AxMEg1VjloNnYxem0wLTNINVY2aDZ2MXoiIGlkPSJpY29uRmciLz48ZyBpZD0iaWNvbkJnIj48c=
GF0aCBjbGFzcz0iaWNvbi12cy1iZyIgZD0iTTEyLjcwNyAxM0gzLjI5M0wyIDExLjcwN1Y0LjI5=
M0wzLjI5MyAzaDkuNDE0TDE0IDQuMjkzdjcuNDE0TDEyLjcwNyAxM3ptLTktMWg4LjU4NmwuNzA=
3LS43MDdWNC43MDdMMTIuMjkzIDRIMy43MDdMMyA0LjcwN3Y2LjU4NmwuNzA3LjcwN3oiLz48cG=
F0aCBjbGFzcz0iaWNvbi12cy1hY3Rpb24tYmx1ZSIgZD0iTTExIDdINVY2aDZ2MXptMCAySDV2M=
Wg2Vjl6Ii8+PC9nPjwvc3ZnPg=3D=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.enum, .m=
onaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.value { ba=
ckground-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3=
dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhbnZ=
hcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxsOi=
NmNmY2ZjZ9Lmljb24tdnMtZmd7ZmlsbDojZjBlZmYxfS5pY29uLXZzLWFjdGlvbi1vcmFuZ2V7Z=
mlsbDojYzI3ZDFhfTwvc3R5bGU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50=
IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZ=
zLW91dCIgZD0iTTE0LjQxNCAxTDE2IDIuNTg2djUuODI4TDE0LjQxNCAxMEgxMHYzLjQxNkw4Lj=
QxNCAxNUgxLjU4NkwwIDEzLjQxNnYtNS44M0wxLjU4NiA2SDZWMi41ODZMNy41ODYgMWg2LjgyO=
HoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtZmciIGQ9Ik0yIDEzaDZWOEgy=
djV6bTEtNGg0djFIM1Y5em0wIDJoNHYxSDN2LTF6bTExLTVWM0g4djNoLjQxNEw5IDYuNTg2VjZ=
oNHYxSDkuNDE0bC41ODYuNTg2VjhoNFY2em0tMS0xSDlWNGg0djF6IiBpZD0iaWNvbkZnIi8+PH=
BhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLW9yYW5nZSIgZD0iTTMgMTFoNC4wMDF2MUgzdi0xe=
m0wLTFoNC4wMDFWOUgzdjF6bTYtMnY1bC0xIDFIMmwtMS0xVjhsMS0xaDZsMSAxek04IDhIMnY1=
aDZWOHptMS0ybDEgMWgzVjZIOXptMC0xaDRWNEg5djF6bTUtM0g4TDcgM3YzaDFWM2g2djVoLTR=
2MWg0bDEtMVYzbC0xLTF6IiBpZD0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.enum-mem=
ber { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0=
cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29=
uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dH=
tmaWxsOiNmNmY2ZjZ9Lmljb24tdnMtZmd7ZmlsbDojZjBlZmYxfS5pY29uLXZzLWFjdGlvbi1ib=
HVle2ZpbGw6IzAwNTM5Y308L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3Bh=
cmVudCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWN=
vbi12cy1vdXQiIGQ9Ik0wIDE1VjZoNlYyLjU4Nkw3LjU4NSAxaDYuODI5TDE2IDIuNTg2djUuOD=
I5TDE0LjQxNCAxMEgxMHY1SDB6bTMtNnoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb=
24tdnMtZmciIGQ9Ik04IDN2M2g1djFoLTN2MWg0VjNIOHptNSAySDlWNGg0djF6TTIgOHY1aDZW=
OEgyem01IDNIM3YtMWg0djF6IiBpZD0iaWNvbkZnIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN=
0aW9uLWJsdWUiIGQ9Ik0xMCA2aDN2MWgtM1Y2ek05IDR2MWg0VjRIOXptNS0ySDhMNyAzdjNoMV=
YzaDZ2NWgtNHYxaDRsMS0xVjNsLTEtMXptLTcgOEgzdjFoNHYtMXptMi0zdjdIMVY3aDh6TTggO=
EgydjVoNlY4eiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.keyword =
{ background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDov=
L3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWN=
hbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaW=
xsOiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfS5pY29uLXZzLWZne2ZpbGw6I2YwZ=
WZmMX08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3BhcmVudCIgZD0iTTE2=
IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1vdXQiIGQ=
9Ik0xNiA1VjJIOVYxSDB2MTRoMTN2LTNoM1Y5aC0xVjZIOVY1aDd6bS04IDdWOWgxdjNIOHoiIG=
lkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtZmciIGQ9Ik0yIDNoNXYxSDJWM3oiI=
GlkPSJpY29uRmciLz48cGF0aCBjbGFzcz0iaWNvbi12cy1iZyIgZD0iTTE1IDRoLTVWM2g1djF6=
bS0xIDNoLTJ2MWgyVjd6bS00IDBIMXYxaDlWN3ptMiA2SDF2MWgxMXYtMXptLTUtM0gxdjFoNnY=
tMXptOCAwaC01djFoNXYtMXpNOCAydjNIMVYyaDd6TTcgM0gydjFoNVYzeiIgaWQ9Imljb25CZy=
IvPjwvc3ZnPg=3D=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.text { b=
ackground-image: url("contrib/suggest/browser/media/String_16x.svg"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.color { =
background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3=
d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhb=
nZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxs=
OiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfS5pY29uLXZzLXJlZHtmaWxsOiNlNTE=
0MDB9Lmljb24tdnMteWVsbG93e2ZpbGw6I2ZmY2MwMH0uaWNvbi12cy1ncmVlbntmaWxsOiMzMz=
k5MzN9Lmljb24tdnMtYmx1ZXtmaWxsOiMxYmExZTJ9Lmljb24tdnMtYWN0aW9uLXB1cnBsZXtma=
WxsOiM2NTJkOTB9Lmljb24td2hpdGV7ZmlsbDojZmZmZmZmfTwvc3R5bGU+PHBhdGggY2xhc3M9=
Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZ=
hcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTE2IDhjMCA0LjQxMS0zLjU4OSA4LT=
ggOGEyLjgwMyAyLjgwMyAwIDAgMS0yLjgtMi44YzAtLjgzMy4yNzItMS42MjkuNzY2LTIuMjQxY=
S41OTYuNTk2IDAgMCAwIC4xMDEtLjM1OS42NjcuNjY3IDAgMCAwLS42NjctLjY2Ni41OC41OCAw=
IDAgMC0uMzU4LjEwMkEzLjU4NCAzLjU4NCAwIDAgMSAyLjggMTAuOCAyLjgwMyAyLjgwMyAwIDA=
gMSAwIDhjMC00LjQxMSAzLjU4OS04IDgtOHM4IDMuNTg5IDggOHoiIGlkPSJvdXRsaW5lIi8+PH=
BhdGggY2xhc3M9Imljb24td2hpdGUiIGQ9Ik01LjQgNy45MzNhMi42NyAyLjY3IDAgMCAxIDIuN=
jY3IDIuNjY2YzAgLjYwNi0uMTkzIDEuMTc5LS41NDQgMS42MTRhMS41OTkgMS41OTkgMCAwIDAt=
LjMyMy45ODcuOC44IDAgMCAwIC44LjhjMy4zMDkgMCA2LTIuNjkxIDYtNnMtMi42OTEtNi02LTY=
tNiAyLjY5MS02IDZjMCAuNDQxLjM1OS44LjguOC4zNzggMCAuNzI5LS4xMTQuOTg2LS4zMjJBMi=
41NjggMi41NjggMCAwIDEgNS40IDcuOTMzeiIgaWQ9Imljb25GZyIvPjxnIGlkPSJpY29uQmciP=
jxwYXRoIGNsYXNzPSJpY29uLXZzLWJnIiBkPSJNOCAxNWMtLjk5MiAwLTEuOC0uODA4LTEuOC0x=
LjggMC0uNjA2LjE5My0xLjE3OS41NDQtMS42MTMuMjA4LS4yNTkuMzIzLS42MDkuMzIzLS45ODc=
gMC0uOTE5LS43NDgtMS42NjYtMS42NjctMS42NjYtLjM3NyAwLS43MjguMTE1LS45ODYuMzIzQT=
IuNTggMi41OCAwIDAgMSAyLjggOS44QzEuODA4IDkuOCAxIDguOTkyIDEgOGMwLTMuODYgMy4xN=
C03IDctNyAzLjg1OSAwIDcgMy4xNCA3IDcgMCAzLjg1OS0zLjE0MSA3LTcgN3pNNS40IDcuOTMz=
YTIuNjcgMi42NyAwIDAgMSAyLjY2NyAyLjY2NmMwIC42MDYtLjE5MyAxLjE3OS0uNTQ0IDEuNjE=
0YTEuNTk5IDEuNTk5IDAgMCAwLS4zMjMuOTg3LjguOCAwIDAgMCAuOC44YzMuMzA5IDAgNi0yLj=
Y5MSA2LTZzLTIuNjkxLTYtNi02LTYgMi42OTEtNiA2YzAgLjQ0MS4zNTkuOC44LjguMzc4IDAgL=
jcyOS0uMTE0Ljk4Ni0uMzIyQTIuNTY4IDIuNTY4IDAgMCAxIDUuNCA3LjkzM3oiLz48cGF0aCBj=
bGFzcz0iaWNvbi12cy1hY3Rpb24tcHVycGxlIiBkPSJNNC41IDUuMzc1YS44NzUuODc1IDAgMSA=
wIDAgMS43NS44NzUuODc1IDAgMCAwIDAtMS43NXoiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1ibH=
VlIiBkPSJNNy4xMjUgMy42MjVhLjg3NS44NzUgMCAxIDAgMCAxLjc1Ljg3NS44NzUgMCAwIDAgM=
C0xLjc1eiIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWdyZWVuIiBkPSJNMTAuNjI1IDQuNWEuODc1=
Ljg3NSAwIDEgMCAwIDEuNzUuODc1Ljg3NSAwIDAgMCAwLTEuNzV6Ii8+PHBhdGggY2xhc3M9Iml=
jb24tdnMteWVsbG93IiBkPSJNMTEuNSA4YS44NzUuODc1IDAgMSAwIDAgMS43NS44NzUuODc1ID=
AgMCAwIDAtMS43NXoiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1yZWQiIGQ9Ik05Ljc1IDEwLjYyN=
WEuODc1Ljg3NSAwIDEgMCAwIDEuNzUuODc1Ljg3NSAwIDAgMCAwLTEuNzV6Ii8+PC9nPjwvc3Zn=
Pg=3D=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.file { b=
ackground-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d=
3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhbn=
Zhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtmaWxsO=
iNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfS5pY29uLXZzLWZne2ZpbGw6I2YwZWZm=
MX08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3BhcmVudCIgZD0iTTE2IDE=
2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1vdXQiIGQ9Ik=
0xNSAxNkgyVjBoOC42MjFMMTUgNC4zNzlWMTZ6IiBpZD0ib3V0bGluZSIvPjxwYXRoIGNsYXNzP=
SJpY29uLXZzLWZnIiBkPSJNMTMgMTRINFYyaDV2NGg0djh6bS0zLTlWMi4yMDdMMTIuNzkzIDVI=
MTB6IiBpZD0iaWNvbkZnIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYmciIGQ9Ik0zIDF2MTRoMTF=
WNC43OTNMMTAuMjA3IDFIM3ptMTAgMTNINFYyaDV2NGg0djh6bS0zLTlWMi4yMDdMMTIuNzkzID=
VIMTB6IiBpZD0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.referenc=
e { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cD=
ovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uL=
WNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojZjZmNmY2fS5pY29uLXZzLW91dHtm=
aWxsOiNmNmY2ZjZ9Lmljb24tdnMtYmd7ZmlsbDojNDI0MjQyfS5pY29uLXZzLWZne2ZpbGw6I2Y=
wZWZmMX0uaWNvbi12cy1hY3Rpb24tYmx1ZXtmaWxsOiMwMDUzOWN9PC9zdHlsZT48cGF0aCBjbG=
Fzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwVjBoMTZ2MTZ6IiBpZD0iY=
2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMTQgNC41NTZWMTNjMCAuOTct=
LjcwMSAyLTIgMkg0Yy0uOTcgMC0yLS43MDEtMi0yVjYuNjQ5QTMuNDk1IDMuNDk1IDAgMCAxIDA=
gMy41QzAgMS41NyAxLjU3IDAgMy41IDBINXYxaDUuMDYxTDE0IDQuNTU2eiIgaWQ9Im91dGxpbm=
UiIHN0eWxlPSJkaXNwbGF5OiBub25lOyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWJnIiBkPSJNM=
TMgNXY4cy0uMDM1IDEtMS4wMzUgMWgtOFMzIDE0IDMgMTNWOWgxdjRoOFY2SDkuMzk3bC41MTct=
LjUyTDkgNC41NzJWM0g3LjQxOUw2LjQxMyAyaDMuMjI4TDEzIDV6IiBpZD0iaWNvbkJnIi8+PHB=
hdGggY2xhc3M9Imljb24tdnMtZmciIGQ9Ik03LjQxOSAzSDl2MS41NzJMNy40MTkgM3ptMS45Nz=
ggM0w2LjQxNiA5SDR2NGg4VjZIOS4zOTd6IiBpZD0iaWNvbkZnIiBzdHlsZT0iZGlzcGxheTogb=
m9uZTsiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1hY3Rpb24tYmx1ZSIgZD0iTTUuOTg4IDZIMy41=
YTIuNSAyLjUgMCAxIDEgMC01SDR2MWgtLjVDMi42NzMgMiAyIDIuNjczIDIgMy41UzIuNjczIDU=
gMy41IDVoMi41MTNMNCAzaDJsMi41IDIuNDg0TDYgOEg0bDEuOTg4LTJ6IiBpZD0iY29sb3JBY3=
Rpb24iLz48L3N2Zz4=3D"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.snippet =
{ background-image: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4w=
IiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKICAgeG1sbnM6ZGM9Imh=
0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIgogICB4bWxuczpjYz0iaHR0cDovL2NyZW=
F0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5O=
TkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcv=
MjAwMC9zdmciCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgdmVyc2l=
vbj0iMS4xIgogICBpZD0ic3ZnNDY5NCIKICAgdmlld0JveD0iMCAwIDE2IDE2Ij4KICA8bWV0YW=
RhdGEKICAgICBpZD0ibWV0YWRhdGE0NzA1Ij4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29ya=
wogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1s=
PC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh=
0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aX=
RsZT48L2RjOnRpdGxlPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZ=
GF0YT4KICA8ZGVmcwogICAgIGlkPSJkZWZzNDcwMyIgLz4KICA8c3R5bGUKICAgICBpZD0ic3R5=
bGU0Njk2Ij4uaWNvbi1jYW52YXMtdHJhbnNwYXJlbnR7b3BhY2l0eTowO2ZpbGw6I2Y2ZjZmNn0=
uaWNvbi12cy1vdXR7ZmlsbDojZjZmNmY2fS5pY29uLXZzLWFjdGlvbi1vcmFuZ2V7ZmlsbDojYz=
I3ZDFhfTwvc3R5bGU+CiAgPGcKICAgICBpZD0iZzQ3MDciCiAgICAgdHJhbnNmb3JtPSJtYXRya=
XgoMS4zMzMzMzMzLDAsMCwxLjMzMzMzMzMsLTI0NS45OTk5OSwtNS4zMzMzMzMpIj4KICAgIDxw=
YXRoCiAgICAgICBkPSJtIDE4NSw0IDExLDAgMCwxMiAtMTEsMCB6IgogICAgICAgaWQ9InBhdGg=
0NTM0IgogICAgICAgc3R5bGU9ImZpbGw6I2Y2ZjZmNiIgLz4KICAgIDxwYXRoCiAgICAgICBkPS=
JtIDE5NCwxMyAwLC03IC03LDAgMCw3IC0xLDAgMCwtOCA5LDAgMCw4IC0xLDAgeiBtIC03LDIgL=
TEsMCAwLC0xIDEsMCAwLDEgeiBtIDIsLTEgLTEsMCAwLDEgMSwwIDAsLTEgeiBtIDIsMCAtMSww=
IDAsMSAxLDAgMCwtMSB6IG0gMiwxIC0xLDAgMCwtMSAxLDAgMCwxIHogbSAyLC0xIC0xLDAgMCw=
xIDEsMCAwLC0xIHoiCiAgICAgICBpZD0icGF0aDQ1MzYiCiAgICAgICBzdHlsZT0iZmlsbDojND=
I0MjQyIiAvPgogICAgPHBhdGgKICAgICAgIGQ9Im0gMTg3LDEzIDAsLTcgNywwIDAsNyAtNywwI=
HoiCiAgICAgICBpZD0icGF0aDQ1MzgiCiAgICAgICBzdHlsZT0iZmlsbDojZjBlZmYxIiAvPgog=
IDwvZz4KICA8cGF0aAogICAgIGlkPSJjYW52YXMiCiAgICAgZD0iTTE2IDE2SDBWMGgxNnYxNno=
iCiAgICAgY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiAvPgo8L3N2Zz4K"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.customco=
lor { background-image: none; }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.folder {=
 background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL=
3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PHN0eWxlIHR5cGU9=
InRleHQvY3NzIj4uaWNvbi1jYW52YXMtdHJhbnNwYXJlbnR7b3BhY2l0eTowO2ZpbGw6I0Y2RjZ=
GNjt9IC5pY29uLXZzLW91dHtvcGFjaXR5OjA7ZmlsbDojRjZGNkY2O30gLmljb24tdnMtZmd7Zm=
lsbDojRjBFRkYxO30gLmljb24tZm9sZGVye2ZpbGw6IzY1NjU2NTt9PC9zdHlsZT48cGF0aCBjb=
GFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNmgtMTZ2LTE2aDE2djE2eiIg=
aWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTE2IDIuNXYxMGMwIC4=
4MjctLjY3MyAxLjUtMS41IDEuNWgtMTEuOTk2Yy0uODI3IDAtMS41LS42NzMtMS41LTEuNXYtOG=
MwLS44MjcuNjczLTEuNSAxLjUtMS41aDIuODg2bDEtMmg4LjExYy44MjcgMCAxLjUuNjczIDEuN=
SAxLjV6IiBpZD0ib3V0bGluZSIvPjxwYXRoIGNsYXNzPSJpY29uLWZvbGRlciIgZD0iTTE0LjUg=
MmgtNy40OTJsLTEgMmgtMy41MDRjLS4yNzcgMC0uNS4yMjQtLjUuNXY4YzAgLjI3Ni4yMjMuNS4=
1LjVoMTEuOTk2Yy4yNzUgMCAuNS0uMjI0LjUtLjV2LTEwYzAtLjI3Ni0uMjI1LS41LS41LS41em=
0tLjQ5NiAyaC02LjQ5NmwuNS0xaDUuOTk2djF6IiBpZD0iaWNvbkJnIi8+PHBhdGggY2xhc3M9I=
mljb24tdnMtZmciIGQ9Ik0xNCAzdjFoLTYuNWwuNS0xaDZ6IiBpZD0iaWNvbkZnIi8+PC9zdmc+=
"); }

.monaco-editor .suggest-widget .monaco-list .monaco-list-row .icon.customco=
lor .colorspan { margin: 0px 0px 0px 0.3em; border: 0.1em solid rgb(0, 0, 0=
); width: 0.7em; height: 0.7em; display: inline-block; }

.monaco-editor .suggest-widget .details { display: flex; flex-direction: co=
lumn; cursor: default; }

.monaco-editor .suggest-widget .details.no-docs { display: none; }

.monaco-editor .suggest-widget.docs-below .details { border-top-width: 0px;=
 }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element { flex=
: 1 1 0%; }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element > .bod=
y { position: absolute; box-sizing: border-box; height: 100%; width: 100%; =
white-space: pre-wrap; }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element > .bod=
y > .header > .type { flex: 2 1 0%; overflow: hidden; text-overflow: ellips=
is; opacity: 0.7; word-break: break-all; margin: 0px; padding: 4px 0px 4px =
5px; }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element > .bod=
y > .docs { margin: 0px; padding: 4px 5px; }

.monaco-editor .suggest-widget .details > .monaco-scrollable-element > .bod=
y > p:empty { display: none; }

.monaco-editor.hc-black .suggest-widget .details > .monaco-scrollable-eleme=
nt > .body > .header > .close, .monaco-editor.vs-dark .suggest-widget .deta=
ils > .monaco-scrollable-element > .body > .header > .close { background-im=
age: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmc=
vMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMyAzIDE2IDE2IiBlbm=
FibGUtYmFja2dyb3VuZD0ibmV3IDMgMyAxNiAxNiI+PHBvbHlnb24gZmlsbD0iI2U4ZThlOCIgc=
G9pbnRzPSIxMi41OTcsMTEuMDQyIDE1LjQsMTMuODQ1IDEzLjg0NCwxNS40IDExLjA0MiwxMi41=
OTggOC4yMzksMTUuNCA2LjY4MywxMy44NDUgOS40ODUsMTEuMDQyIDYuNjgzLDguMjM5IDguMjM=
4LDYuNjgzIDExLjA0Miw5LjQ4NiAxMy44NDUsNi42ODMgMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=
=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-row .ico=
n { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cD=
ovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uL=
WNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29uLXZzLW91dHtm=
aWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fTwvc3R5bGU+PHBhdGggY2xhc3M=
9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbn=
ZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTE2IDEwYzAgMi4yMDUtMS43OTQgN=
C00IDQtMS44NTggMC0zLjQxMS0xLjI3OS0zLjg1OC0zaC0uOTc4bDIuMzE4IDRIMHYtMS43MDNs=
Mi0zLjQwOFYwaDExdjYuMTQyYzEuNzIxLjQ0NyAzIDIgMyAzLjg1OHoiIGlkPSJvdXRsaW5lIi8=
+PHBhdGggY2xhc3M9Imljb24tdnMtYmciIGQ9Ik0xMiAxdjQuNzVBNC4yNTUgNC4yNTUgMCAwID=
AgNy43NSAxMGgtLjczMkw0LjI3NSA1LjI2OSAzIDcuNDQyVjFoOXpNNy43NDcgMTRMNC4yNjkgO=
CAuNzQ4IDE0aDYuOTk5ek0xNSAxMGEzIDMgMCAxIDEtNiAwIDMgMyAwIDAgMSA2IDB6IiBpZD0i=
aWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.constructor, .monaco-editor.hc-black .suggest-widget .monaco-list .monaco-=
list-row .icon.function, .monaco-editor.hc-black .suggest-widget .monaco-li=
st .monaco-list-row .icon.method, .monaco-editor.vs-dark .suggest-widget .m=
onaco-list .monaco-list-row .icon.constructor, .monaco-editor.vs-dark .sugg=
est-widget .monaco-list .monaco-list-row .icon.function, .monaco-editor.vs-=
dark .suggest-widget .monaco-list .monaco-list-row .icon.method { backgroun=
d-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5=
vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhbnZhcy10cm=
Fuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29uLXZzLW91dHtmaWxsOiMyZDJkM=
zB9Lmljb24tdnMtZmd7ZmlsbDojMmIyODJlfS5pY29uLXZzLWFjdGlvbi1wdXJwbGV7ZmlsbDoj=
YjE4MGQ3fTwvc3R5bGU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJ=
NMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dC=
IgZD0iTTE1IDMuMzQ5djguNDAzTDguOTc1IDE2SDguMDdMMSAxMS41ODJWMy4zMjdMNy41OTUgM=
GgxLjExOEwxNSAzLjM0OXoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtZmci=
IGQ9Ik0xMi43MTUgNC4zOThMOC40ODcgNy4wMiAzLjU2NSA0LjI3Mmw0LjU3OC0yLjMwOSA0LjU=
3MiAyLjQzNXpNMyA1LjEwMmw1IDIuNzkydjUuNzA1bC01LTMuMTI1VjUuMTAyem02IDguNDM0Vj=
cuODc4bDQtMi40OHY1LjMxN2wtNCAyLjgyMXoiIGlkPSJpY29uRmciLz48cGF0aCBjbGFzcz0ia=
WNvbi12cy1hY3Rpb24tcHVycGxlIiBkPSJNOC4xNTYuODM3TDIgMy45NDJ2Ny4wODVMOC41MTcg=
MTUuMSAxNCAxMS4yMzNWMy45NUw4LjE1Ni44Mzd6bTQuNTU5IDMuNTYxTDguNDg3IDcuMDIgMy4=
1NjUgNC4yNzJsNC41NzgtMi4zMDkgNC41NzIgMi40MzV6TTMgNS4xMDJsNSAyLjc5MnY1LjcwNW=
wtNS0zLjEyNVY1LjEwMnptNiA4LjQzNFY3Ljg3OGw0LTIuNDh2NS4zMTdsLTQgMi44MjF6IiBpZ=
D0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.field, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-ro=
w .icon.field { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bW=
xucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0e=
WxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29u=
LXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtZmd7ZmlsbDojMmIyODJlfS5pY29uLXZzLWF=
jdGlvbi1ibHVle2ZpbGw6Izc1YmVmZn08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy=
10cmFuc3BhcmVudCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjb=
GFzcz0iaWNvbi12cy1vdXQiIGQ9Ik0wIDEwLjczNlY0LjVMOSAwbDcgMy41djYuMjM2bC05IDQu=
NS03LTMuNXoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLWJsdWU=
iIGQ9Ik05IDFMMSA1djVsNiAzIDgtNFY0TDkgMXpNNyA2Ljg4MkwzLjIzNiA1IDkgMi4xMTggMT=
IuNzY0IDQgNyA2Ljg4MnoiIGlkPSJpY29uQmciLz48cGF0aCBjbGFzcz0iaWNvbi12cy1mZyIgZ=
D0iTTkgMi4xMThMMTIuNzY0IDQgNyA2Ljg4MiAzLjIzNiA1IDkgMi4xMTh6IiBpZD0iaWNvbkZn=
Ii8+PC9zdmc+"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.event, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-ro=
w .icon.event { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bW=
xucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0e=
WxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29u=
LXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYWN0aW9uLW9yYW5nZXtmaWxsOiNlOGFiNTN=
9PC9zdHlsZT48cGF0aCBjbGFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNk=
gwVjBoMTZ2MTZ6IiBpZD0iY2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNM=
TQgMS40MTRMOS40MTQgNkgxNHYxLjQxNEw1LjQxNCAxNkgzdi0xLjIzNEw1LjM3MSAxMEgyVjgu=
NzY0TDYuMzgyIDBIMTR2MS40MTR6IiBpZD0ib3V0bGluZSIgc3R5bGU9ImRpc3BsYXk6IG5vbmU=
7Ii8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLW9yYW5nZSIgZD0iTTcgN2g2bC04IDhING=
wyLjk4NS02SDNsNC04aDZMNyA3eiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.operator, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list=
-row .icon.operator { background-image: url("data:image/svg+xml;base64,PHN2=
ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI=
+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS=
5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtZmd7ZmlsbDojMmIyODJlfS5pY29uL=
XZzLWFjdGlvbi1ibHVle2ZpbGw6Izc1YmVmZn08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNh=
bnZhcy10cmFuc3BhcmVudCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF=
0aCBjbGFzcz0iaWNvbi12cy1vdXQiIGQ9Ik0xNiAxNkgwVjBoMTZ2MTZ6IiBpZD0ib3V0bGluZS=
Igc3R5bGU9ImRpc3BsYXk6IG5vbmU7Ii8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLWJsd=
WUiIGQ9Ik0xIDF2MTRoMTRWMUgxem02IDEySDN2LTFoNHYxem0wLTNIM1Y5aDR2MXptMC01SDV2=
Mkg0VjVIMlY0aDJWMmgxdjJoMnYxem0zLjI4MSA4SDguNzE5bDMtNGgxLjU2M2wtMy4wMDEgNHp=
NMTQgNUg5VjRoNXYxeiIgaWQ9Imljb25CZyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWZnIiBkPS=
JNNyA1SDV2Mkg0VjVIMlY0aDJWMmgxdjJoMnYxem03LTFIOXYxaDVWNHpNNyA5SDN2MWg0Vjl6b=
TAgM0gzdjFoNHYtMXptMy4yODEgMWwzLTRoLTEuNTYzbC0zIDRoMS41NjN6IiBpZD0iaWNvbkZn=
IiBzdHlsZT0iZGlzcGxheTogbm9uZTsiLz48L3N2Zz4=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.variable, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list=
-row .icon.variable { background-image: url("data:image/svg+xml;base64,PHN2=
ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI=
+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS=
5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fS5pY29uL=
XZzLWZne2ZpbGw6IzJiMjgyZX0uaWNvbi12cy1hY3Rpb24tYmx1ZXtmaWxsOiM3NWJlZmZ9PC9z=
dHlsZT48cGF0aCBjbGFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwVjB=
oMTZ2MTZ6IiBpZD0iY2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMTEgM3=
YxLjAxNUw4LjczMyAyLjg4MiA1IDQuNzQ5VjNIMHYxMGg1di0xLjg1OWwyLjE1NiAxLjA3N0wxM=
SAxMC4yOTVWMTNoNVYzaC01eiIgaWQ9Im91dGxpbmUiIHN0eWxlPSJkaXNwbGF5OiBub25lOyIv=
PjxwYXRoIGNsYXNzPSJpY29uLXZzLWJnIiBkPSJNMiA1djZoMnYxSDFWNGgzdjFIMnptMTAgNnY=
xaDNWNGgtM3YxaDJ2NmgtMnoiIGlkPSJpY29uQmciLz48cGF0aCBjbGFzcz0iaWNvbi12cy1mZy=
IgZD0iTTcuMTU2IDcuMTU2bC0xLjU3OC0uNzg5IDMuMTU2LTEuNTc4IDEuNTc4Ljc4OS0zLjE1N=
iAxLjU3OHoiIGlkPSJpY29uRmciIHN0eWxlPSJkaXNwbGF5OiBub25lOyIvPjxwYXRoIGNsYXNz=
PSJpY29uLXZzLWFjdGlvbi1ibHVlIiBkPSJNOC43MzMgNEw0IDYuMzY3djMuMTU2TDcuMTU2IDE=
xLjFsNC43MzMtMi4zNjdWNS41NzhMOC43MzMgNHpNNy4xNTYgNy4xNTZsLTEuNTc4LS43ODkgMy=
4xNTYtMS41NzggMS41NzguNzg5LTMuMTU2IDEuNTc4eiIgaWQ9ImNvbG9ySW1wb3J0YW5jZSIvP=
jwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.class, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-ro=
w .icon.class { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bW=
xucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0e=
WxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29u=
LXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYWN0aW9uLW9yYW5nZXtmaWxsOiNlOGFiNTN=
9PC9zdHlsZT48cGF0aCBjbGFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNk=
gwVjBoMTZ2MTZ6IiBpZD0iY2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNM=
TYgNi41ODZsLTMtM0wxMS41ODYgNUg5LjQxNGwxLTEtNC00aC0uODI4TDAgNS41ODZ2LjgyOGw0=
IDRMNi40MTQgOEg3djVoMS41ODZsMyAzaC44MjhMMTYgMTIuNDE0di0uODI4TDEzLjkxNCA5LjU=
gMTYgNy40MTR2LS44Mjh6IiBpZD0ib3V0bGluZSIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWFjdG=
lvbi1vcmFuZ2UiIGQ9Ik0xMyAxMGwyIDItMyAzLTItMiAxLTFIOFY3SDZMNCA5IDEgNmw1LTUgM=
yAzLTIgMmg1bDEtMSAyIDItMyAzLTItMiAxLTFIOXY0bDIuOTk5LjAwMkwxMyAxMHoiIGlkPSJp=
Y29uQmciLz48L3N2Zz4=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.interface, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-lis=
t-row .icon.interface { background-image: url("data:image/svg+xml;base64,PH=
N2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxN=
iI+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMw=
fS5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtZmd7ZmlsbDojMmIyODJlfS5pY29=
uLXZzLWFjdGlvbi1ibHVle2ZpbGw6Izc1YmVmZn08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLW=
NhbnZhcy10cmFuc3BhcmVudCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48c=
GF0aCBjbGFzcz0iaWNvbi12cy1vdXQiIGQ9Ik0xMS41IDEyYy0xLjkxNSAwLTMuNjAyLTEuMjQx=
LTQuMjI4LTNoLTEuNDFhMy4xMSAzLjExIDAgMCAxLTIuNzM3IDEuNjI1QzEuNDAyIDEwLjYyNSA=
wIDkuMjIzIDAgNy41czEuNDAyLTMuMTI1IDMuMTI1LTMuMTI1YzEuMTY1IDAgMi4yMDEuNjM5ID=
IuNzM3IDEuNjI1aDEuNDFjLjYyNi0xLjc1OSAyLjMxMy0zIDQuMjI4LTNDMTMuOTgxIDMgMTYgN=
S4wMTkgMTYgNy41UzEzLjk4MSAxMiAxMS41IDEyeiIgaWQ9Im91dGxpbmUiLz48cGF0aCBjbGFz=
cz0iaWNvbi12cy1mZyIgZD0iTTExLjUgOUExLjUwMSAxLjUwMSAwIDEgMSAxMyA3LjVjMCAuODI=
2LS42NzMgMS41LTEuNSAxLjV6IiBpZD0iaWNvbkZnIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYW=
N0aW9uLWJsdWUiIGQ9Ik0xMS41IDRhMy40OSAzLjQ5IDAgMCAwLTMuNDUgM0g1LjE4NUEyLjEyM=
iAyLjEyMiAwIDAgMCAxIDcuNWEyLjEyMyAyLjEyMyAwIDEgMCA0LjE4NS41SDguMDVhMy40OSAz=
LjQ5IDAgMCAwIDMuNDUgMyAzLjUgMy41IDAgMSAwIDAtN3ptMCA1Yy0uODI3IDAtMS41LS42NzM=
tMS41LTEuNVMxMC42NzMgNiAxMS41IDZzMS41LjY3MyAxLjUgMS41UzEyLjMyNyA5IDExLjUgOX=
oiIGlkPSJpY29uQmciLz48L3N2Zz4=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.struct, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-r=
ow .icon.struct { background-image: url("data:image/svg+xml;base64,PHN2ZyB4=
bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN=
0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY2=
9uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYWN0aW9uLWJsdWV7ZmlsbDojNzViZWZmf=
Twvc3R5bGU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZI=
MFYwaDE2djE2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTk=
gMTRWOEg3djZIMVYyaDE0djEySDl6IiBpZD0ib3V0bGluZSIgc3R5bGU9ImRpc3BsYXk6IG5vbm=
U7Ii8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLWJsdWUiIGQ9Ik0xMCA5aDR2NGgtNFY5e=
m0tOCA0aDRWOUgydjR6TTIgM3Y0aDEyVjNIMnoiIGlkPSJpY29uQmciLz48L3N2Zz4=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.type-parameter, .monaco-editor.vs-dark .suggest-widget .monaco-list .monac=
o-list-row .icon.type-parameter { background-image: url("data:image/svg+xml=
;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjA=
gMCAxNiAxNiI+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbD=
ojMmQyZDMwfS5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjN=
WM1fTwvc3R5bGU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYg=
MTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0=
iTTEwLjcwMiAxMC41bDItMi0yLTIgLjUtLjVIMTB2NWgxdjNINXYtM2gxVjZINC43OThsLjUuNS=
0yIDIgMiAyTDMgMTIuNzk3bC0zLTNWNy4yMDFsMy0zVjJoMTB2Mi4yMDFsMyAzdjIuNTk2bC0zI=
DMtMi4yOTgtMi4yOTd6IiBpZD0ib3V0bGluZSIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7Ii8+PHBh=
dGggY2xhc3M9Imljb24tdnMtYmciIGQ9Ik00IDNoOHYyaC0xdi0uNWMwLS4yNzctLjIyNC0uNS0=
uNS0uNUg5djcuNWMwIC4yNzUuMjI0LjUuNS41aC41djFINnYtMWguNWEuNS41IDAgMCAwIC41LS=
41VjRINS41YS41LjUgMCAwIDAtLjUuNVY1SDRWM3pNMyA1LjYxNUwuMTE2IDguNSAzIDExLjM4M=
2wuODg0LS44ODMtMi0yIDItMkwzIDUuNjE1em0xMCAwbC0uODg0Ljg4NSAyIDItMiAyIC44ODQu=
ODgzTDE1Ljg4NCA4LjUgMTMgNS42MTV6IiBpZD0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.module, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-r=
ow .icon.module { background-image: url("data:image/svg+xml;base64,PHN2ZyB4=
bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN=
0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY2=
9uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fTwvc3R5bGU+P=
HBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2=
eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTkuMjYgMTEuOTg=
0bC45NzgtLjAyMWEuOTYyLjk2MiAwIDAgMCAuMDktLjAwNmMuMDExLS4wNjMuMDI2LS4xNzkuMD=
I2LS4zNjFWOS42ODhjMC0uNjc5LjE4NS0xLjI1Ny41My0xLjcwNy0uMzQ2LS40NTItLjUzLTEuM=
DMtLjUzLTEuNzA1VjQuMzVjMC0uMTY3LS4wMjEtLjI1OS0uMDM0LS4zMDJMOS4yNiA0LjAyVi45=
NzNsMS4wMTEuMDExYzIuMTY3LjAyNCAzLjQwOSAxLjE1NiAzLjQwOSAzLjEwNXYxLjk2MmMwIC4=
zNTEuMDcxLjQ2MS4wNzIuNDYybC45MzYuMDYuMDUzLjkyN3YxLjkzNmwtLjkzNi4wNjFjLS4wNz=
YuMDE2LS4xMjUuMTQ2LS4xMjUuNDI0djIuMDE3YzAgLjkxNC0uMzMyIDMuMDQzLTMuNDA4IDMuM=
Dc4bC0xLjAxMi4wMTF2LTMuMDQzem0tMy41MjEgMy4wMzJjLTMuMDg5LS4wMzUtMy40MjItMi4x=
NjQtMy40MjItMy4wNzhWOS45MjFjMC0uMzI3LS4wNjYtLjQzMi0uMDY3LS40MzNsLS45MzctLjA=
2LS4wNjMtLjkyOVY2LjU2M2wuOTQyLS4wNmMuMDU4IDAgLjEyNS0uMTE0LjEyNS0uNDUyVjQuMD=
ljMC0xLjk0OSAxLjI0OC0zLjA4MSAzLjQyMi0zLjEwNUw2Ljc1Ljk3M1Y0LjAybC0uOTc1LjAyM=
2EuNTcyLjU3MiAwIDAgMC0uMDkzLjAxYy4wMDYuMDIxLS4wMTkuMTE1LS4wMTkuMjk3djEuOTI4=
YzAgLjY3NS0uMTg2IDEuMjUzLS41MzQgMS43MDUuMzQ4LjQ1LjUzNCAxLjAyOC41MzQgMS43MDd=
2MS45MDdjMCAuMTc1LjAxNC4yOTEuMDI3LjM2My4wMjMuMDAyIDEuMDYuMDI1IDEuMDYuMDI1dj=
MuMDQzbC0xLjAxMS0uMDEyeiIgaWQ9Im91dGxpbmUiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1iZ=
yIgZD0iTTUuNzUgMTQuMDE2Yy0xLjYyMy0uMDE5LTIuNDM0LS43MTEtMi40MzQtMi4wNzhWOS45=
MjFjMC0uOTAyLS4zNTUtMS4zNzYtMS4wNjYtMS40MjJ2LS45OThjLjcxMS0uMDQ1IDEuMDY2LS4=
1MjkgMS4wNjYtMS40NDlWNC4wOWMwLTEuMzg1LjgxMS0yLjA4NyAyLjQzNC0yLjEwNXYxLjA2Yy=
0uNzI1LjAxNy0xLjA4Ny40NTMtMS4wODcgMS4zMDV2MS45MjhjMCAuOTItLjQ1NCAxLjQ4OC0xL=
jM2IDEuNzAyVjhjLjkwNy4yMDEgMS4zNi43NjMgMS4zNiAxLjY4OHYxLjkwN2MwIC40ODguMDgx=
LjgzNS4yNDMgMS4wNDIuMTYyLjIwOC40NDMuMzE2Ljg0NC4zMjV2MS4wNTR6bTcuOTktNS41MTd=
jLS43MDYuMDQ1LTEuMDYuNTItMS4wNiAxLjQyMnYyLjAxN2MwIDEuMzY3LS44MDcgMi4wNi0yLj=
QyIDIuMDc4di0xLjA1M2MuMzk2LS4wMDkuNjc4LS4xMTguODQ0LS4zMjguMTY3LS4yMS4yNS0uN=
TU2LjI1LTEuMDM5VjkuNjg4YzAtLjkyNS40NDktMS40ODggMS4zNDctMS42ODh2LS4wMjFjLS44=
OTgtLjIxNC0xLjM0Ny0uNzgyLTEuMzQ3LTEuNzAyVjQuMzVjMC0uODUyLS4zNjQtMS4yODgtMS4=
wOTQtMS4zMDZ2LTEuMDZjMS42MTMuMDE4IDIuNDIuNzIgMi40MiAyLjEwNXYxLjk2MmMwIC45Mi=
4zNTQgMS40MDQgMS4wNiAxLjQ0OXYuOTk5eiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.property, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list=
-row .icon.property { background-image: url("data:image/svg+xml;base64,PHN2=
ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI=
+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS=
5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fTwvc3R5b=
GU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2=
djE2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTE2IDUuNWE=
1LjUgNS41IDAgMCAxLTUuNSA1LjVjLS4yNzUgMC0uNTQzLS4wMjctLjgwNy0uMDY2bC0uMDc5LS=
4wMTJhNS40MjkgNS40MjkgMCAwIDEtLjgxLS4xOTJsLTQuNTM3IDQuNTM3Yy0uNDcyLjQ3My0xL=
jEuNzMzLTEuNzY3LjczM3MtMS4yOTUtLjI2LTEuNzY4LS43MzJhMi41MDIgMi41MDIgMCAwIDEg=
MC0zLjUzNWw0LjUzNy00LjUzN2E1LjQ1MiA1LjQ1MiAwIDAgMS0uMTkxLS44MTJjLS4wMDUtLjA=
yNS0uMDA4LS4wNTEtLjAxMi0uMDc3QTUuNTAzIDUuNTAzIDAgMCAxIDUgNS41YTUuNSA1LjUgMC=
AxIDEgMTEgMHoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYmciIGQ9Ik0xN=
SA1LjVhNC41IDQuNSAwIDAgMS00LjUgNC41Yy0uNjkzIDAtMS4zNDItLjE3LTEuOTI5LS40NWwt=
NS4wMSA1LjAxYy0uMjkzLjI5NC0uNjc3LjQ0LTEuMDYxLjQ0cy0uNzY4LS4xNDYtMS4wNjEtLjQ=
zOWExLjUgMS41IDAgMCAxIDAtMi4xMjFsNS4wMS01LjAxQTQuNDgzIDQuNDgzIDAgMCAxIDYgNS=
41IDQuNSA0LjUgMCAwIDEgMTAuNSAxYy42OTMgMCAxLjM0Mi4xNyAxLjkyOS40NUw5LjYzNiA0L=
jI0M2wyLjEyMSAyLjEyMSAyLjc5My0yLjc5M2MuMjguNTg3LjQ1IDEuMjM2LjQ1IDEuOTI5eiIg=
aWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.unit, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-row=
 .icon.unit { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxu=
cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWx=
lPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29uLX=
ZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fS5pY29uLXZzLWZne=
2ZpbGw6IzJiMjgyZX08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3BhcmVu=
dCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi1=
2cy1vdXQiIGQ9Ik0xNiAxMS4wMTNIMVY0aDE1djcuMDEzeiIgaWQ9Im91dGxpbmUiLz48cGF0aC=
BjbGFzcz0iaWNvbi12cy1mZyIgZD0iTTggOUg3VjZoM3YzSDlWN0g4djJ6TTQgN2gxdjJoMVY2S=
DN2M2gxVjd6bTggMGgxdjJoMVY2aC0zdjNoMVY3eiIgaWQ9Imljb25GZyIvPjxwYXRoIGNsYXNz=
PSJpY29uLXZzLWJnIiBkPSJNMiA1djVoMTNWNUgyem00IDRINVY3SDR2MkgzVjZoM3Yzem00IDB=
IOVY3SDh2Mkg3VjZoM3Yzem00IDBoLTFWN2gtMXYyaC0xVjZoM3YzeiIgaWQ9Imljb25CZyIvPj=
wvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.constant, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list=
-row .icon.constant { background-image: url("data:image/svg+xml;base64,PHN2=
ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI=
+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMjUyNTI2fS=
5pY29uLXZzLW91dHtmaWxsOiMyNTI1MjZ9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fS5pY29uL=
XZzLWZne2ZpbGw6IzJiMjgyZX0uaWNvbi12cy1hY3Rpb24tYmx1ZXtmaWxsOiM3NWJlZmZ9PC9z=
dHlsZT48cGF0aCBjbGFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwVjB=
oMTZ2MTZ6IiBpZD0iY2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMi44Nz=
kgMTRMMSAxMi4xMjFWMy44NzlMMi44NzkgMmgxMC4yNDJMMTUgMy44Nzl2OC4yNDJMMTMuMTIxI=
DE0SDIuODc5eiIgaWQ9Im91dGxpbmUiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1mZyIgZD0iTTEy=
LjI5MyA0SDMuNzA3TDMgNC43MDd2Ni41ODZsLjcwNy43MDdoOC41ODZsLjcwNy0uNzA3VjQuNzA=
3TDEyLjI5MyA0ek0xMSAxMEg1VjloNnYxem0wLTNINVY2aDZ2MXoiIGlkPSJpY29uRmciLz48Zy=
BpZD0iaWNvbkJnIj48cGF0aCBjbGFzcz0iaWNvbi12cy1iZyIgZD0iTTEyLjcwNyAxM0gzLjI5M=
0wyIDExLjcwN1Y0LjI5M0wzLjI5MyAzaDkuNDE0TDE0IDQuMjkzdjcuNDE0TDEyLjcwNyAxM3pt=
LTktMWg4LjU4NmwuNzA3LS43MDdWNC43MDdMMTIuMjkzIDRIMy43MDdMMyA0LjcwN3Y2LjU4Nmw=
uNzA3LjcwN3oiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1hY3Rpb24tYmx1ZSIgZD0iTTExIDdINV=
Y2aDZ2MXptMCAySDV2MWg2Vjl6Ii8+PC9nPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.enum, .monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-ro=
w .icon.value, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-=
list-row .icon.enum, .monaco-editor.vs-dark .suggest-widget .monaco-list .m=
onaco-list-row .icon.value { background-image: url("data:image/svg+xml;base=
64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAx=
NiAxNiI+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQ=
yZDMwfS5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtZmd7ZmlsbDojMmIyODJlfS=
5pY29uLXZzLWFjdGlvbi1vcmFuZ2V7ZmlsbDojZThhYjUzfTwvc3R5bGU+PHBhdGggY2xhc3M9I=
mljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE2eiIgaWQ9ImNhbnZh=
cyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTE0LjQxNCAxTDE2IDIuNTg2djUuODI=
4TDE0LjQxNCAxMEgxMHYzLjQxNkw4LjQxNCAxNUgxLjU4NkwwIDEzLjQxNnYtNS44M0wxLjU4Ni=
A2SDZWMi41ODZMNy41ODYgMWg2LjgyOHoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb=
24tdnMtZmciIGQ9Ik0yIDEzaDZWOEgydjV6bTEtNGg0djFIM1Y5em0wIDJoNHYxSDN2LTF6bTEx=
LTVWM0g4djNoLjQxNEw5IDYuNTg2VjZoNHYxSDkuNDE0bC41ODYuNTg2VjhoNFY2em0tMS0xSDl=
WNGg0djF6IiBpZD0iaWNvbkZnIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYWN0aW9uLW9yYW5nZS=
IgZD0iTTMgMTFoNC4wMDF2MUgzdi0xem0wLTFoNC4wMDFWOUgzdjF6bTYtMnY1bC0xIDFIMmwtM=
S0xVjhsMS0xaDZsMSAxek04IDhIMnY1aDZWOHptMS0ybDEgMWgzVjZIOXptMC0xaDRWNEg5djF6=
bTUtM0g4TDcgM3YzaDFWM2g2djVoLTR2MWg0bDEtMVYzbC0xLTF6IiBpZD0iaWNvbkJnIi8+PC9=
zdmc+"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.enum-member, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-l=
ist-row .icon.enum-member { background-image: url("data:image/svg+xml;base6=
4,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxN=
iAxNiI+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQy=
ZDMwfS5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtZmd7ZmlsbDojMmIyODJlfS5=
pY29uLXZzLWFjdGlvbi1ibHVle2ZpbGw6Izc1YmVmZn08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY2=
9uLWNhbnZhcy10cmFuc3BhcmVudCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiL=
z48cGF0aCBjbGFzcz0iaWNvbi12cy1vdXQiIGQ9Ik0wIDE1VjZoNlYyLjU4Nkw3LjU4NSAxaDYu=
ODI5TDE2IDIuNTg2djUuODI5TDE0LjQxNCAxMEgxMHY1SDB6bTMtNnoiIGlkPSJvdXRsaW5lIi8=
+PHBhdGggY2xhc3M9Imljb24tdnMtZmciIGQ9Ik04IDN2M2g1djFoLTN2MWg0VjNIOHptNSAySD=
lWNGg0djF6TTIgOHY1aDZWOEgyem01IDNIM3YtMWg0djF6IiBpZD0iaWNvbkZnIi8+PHBhdGggY=
2xhc3M9Imljb24tdnMtYWN0aW9uLWJsdWUiIGQ9Ik0xMCA2aDN2MWgtM1Y2ek05IDR2MWg0VjRI=
OXptNS0ySDhMNyAzdjNoMVYzaDZ2NWgtNHYxaDRsMS0xVjNsLTEtMXptLTcgOEgzdjFoNHYtMXp=
tMi0zdjdIMVY3aDh6TTggOEgydjVoNlY4eiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.keyword, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-=
row .icon.keyword { background-image: url("data:image/svg+xml;base64,PHN2Zy=
B4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+P=
HN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5p=
Y29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fS5pY29uLXZ=
zLWZne2ZpbGw6IzJiMjgyZX08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3=
BhcmVudCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0ia=
WNvbi12cy1vdXQiIGQ9Ik0xNiA1VjJIOVYxSDB2MTRoMTN2LTNoM1Y5aC0xVjZIOVY1aDd6bS04=
IDdWOWgxdjNIOHoiIGlkPSJvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24tdnMtZmciIGQ9Ik0=
yIDNoNXYxSDJWM3oiIGlkPSJpY29uRmciLz48cGF0aCBjbGFzcz0iaWNvbi12cy1iZyIgZD0iTT=
E1IDRoLTVWM2g1djF6bS0xIDNoLTJ2MWgyVjd6bS00IDBIMXYxaDlWN3ptMiA2SDF2MWgxMXYtM=
XptLTUtM0gxdjFoNnYtMXptOCAwaC01djFoNXYtMXpNOCAydjNIMVYyaDd6TTcgM0gydjFoNVYz=
eiIgaWQ9Imljb25CZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.text, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-row=
 .icon.text { background-image: url("contrib/suggest/browser/media/String_i=
nverse_16x.svg"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.color, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-ro=
w .icon.color { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bW=
xucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0e=
WxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29u=
LXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fS5pY29uLXZzLXJ=
lZHtmaWxsOiNmNDg3NzF9Lmljb24tdnMteWVsbG93e2ZpbGw6I2ZmY2MwMH0uaWNvbi12cy1ncm=
VlbntmaWxsOiMzMzk5MzN9Lmljb24tdnMtYmx1ZXtmaWxsOiMxYmExZTJ9Lmljb24tdnMtYWN0a=
W9uLXB1cnBsZXtmaWxsOiNiMTgwZDd9Lmljb24td2hpdGV7ZmlsbDojMDAwMDAwfTwvc3R5bGU+=
PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJNMTYgMTZIMFYwaDE2djE=
2eiIgaWQ9ImNhbnZhcyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLW91dCIgZD0iTTE2IDhjMCA0Lj=
QxMS0zLjU4OSA4LTggOGEyLjgwMyAyLjgwMyAwIDAgMS0yLjgtMi44YzAtLjgzMy4yNzItMS42M=
jkuNzY2LTIuMjQxYS41OTYuNTk2IDAgMCAwIC4xMDEtLjM1OS42NjcuNjY3IDAgMCAwLS42Njct=
LjY2Ni41OC41OCAwIDAgMC0uMzU4LjEwMkEzLjU4NCAzLjU4NCAwIDAgMSAyLjggMTAuOCAyLjg=
wMyAyLjgwMyAwIDAgMSAwIDhjMC00LjQxMSAzLjU4OS04IDgtOHM4IDMuNTg5IDggOHoiIGlkPS=
JvdXRsaW5lIi8+PHBhdGggY2xhc3M9Imljb24td2hpdGUiIGQ9Ik01LjQgNy45MzNhMi42NyAyL=
jY3IDAgMCAxIDIuNjY3IDIuNjY2YzAgLjYwNi0uMTkzIDEuMTc5LS41NDQgMS42MTRhMS41OTkg=
MS41OTkgMCAwIDAtLjMyMy45ODcuOC44IDAgMCAwIC44LjhjMy4zMDkgMCA2LTIuNjkxIDYtNnM=
tMi42OTEtNi02LTYtNiAyLjY5MS02IDZjMCAuNDQxLjM1OS44LjguOC4zNzggMCAuNzI5LS4xMT=
QuOTg2LS4zMjJBMi41NjggMi41NjggMCAwIDEgNS40IDcuOTMzeiIgaWQ9Imljb25GZyIvPjxnI=
GlkPSJpY29uQmciPjxwYXRoIGNsYXNzPSJpY29uLXZzLWJnIiBkPSJNOCAxNWMtLjk5MiAwLTEu=
OC0uODA4LTEuOC0xLjggMC0uNjA2LjE5My0xLjE3OS41NDQtMS42MTMuMjA4LS4yNTkuMzIzLS4=
2MDkuMzIzLS45ODcgMC0uOTE5LS43NDgtMS42NjYtMS42NjctMS42NjYtLjM3NyAwLS43MjguMT=
E1LS45ODYuMzIzQTIuNTggMi41OCAwIDAgMSAyLjggOS44QzEuODA4IDkuOCAxIDguOTkyIDEgO=
GMwLTMuODYgMy4xNC03IDctNyAzLjg1OSAwIDcgMy4xNCA3IDcgMCAzLjg1OS0zLjE0MSA3LTcg=
N3pNNS40IDcuOTMzYTIuNjcgMi42NyAwIDAgMSAyLjY2NyAyLjY2NmMwIC42MDYtLjE5MyAxLjE=
3OS0uNTQ0IDEuNjE0YTEuNTk5IDEuNTk5IDAgMCAwLS4zMjMuOTg3LjguOCAwIDAgMCAuOC44Yz=
MuMzA5IDAgNi0yLjY5MSA2LTZzLTIuNjkxLTYtNi02LTYgMi42OTEtNiA2YzAgLjQ0MS4zNTkuO=
C44LjguMzc4IDAgLjcyOS0uMTE0Ljk4Ni0uMzIyQTIuNTY4IDIuNTY4IDAgMCAxIDUuNCA3Ljkz=
M3oiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1hY3Rpb24tcHVycGxlIiBkPSJNNC41IDUuMzc1YS4=
4NzUuODc1IDAgMSAwIDAgMS43NS44NzUuODc1IDAgMCAwIDAtMS43NXoiLz48cGF0aCBjbGFzcz=
0iaWNvbi12cy1ibHVlIiBkPSJNNy4xMjUgMy42MjVhLjg3NS44NzUgMCAxIDAgMCAxLjc1Ljg3N=
S44NzUgMCAwIDAgMC0xLjc1eiIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWdyZWVuIiBkPSJNMTAu=
NjI1IDQuNWEuODc1Ljg3NSAwIDEgMCAwIDEuNzUuODc1Ljg3NSAwIDAgMCAwLTEuNzV6Ii8+PHB=
hdGggY2xhc3M9Imljb24tdnMteWVsbG93IiBkPSJNMTEuNSA4YS44NzUuODc1IDAgMSAwIDAgMS=
43NS44NzUuODc1IDAgMCAwIDAtMS43NXoiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1yZWQiIGQ9I=
k05Ljc1IDEwLjYyNWEuODc1Ljg3NSAwIDEgMCAwIDEuNzUuODc1Ljg3NSAwIDAgMCAwLTEuNzV6=
Ii8+PC9nPjwvc3ZnPg=3D=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.file, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-row=
 .icon.file { background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxu=
cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHN0eWx=
lPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMwfS5pY29uLX=
ZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fS5pY29uLXZzLWZne=
2ZpbGw6IzJiMjgyZX08L3N0eWxlPjxwYXRoIGNsYXNzPSJpY29uLWNhbnZhcy10cmFuc3BhcmVu=
dCIgZD0iTTE2IDE2SDBWMGgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi1=
2cy1vdXQiIGQ9Ik0xNSAxNkgyVjBoOC42MjFMMTUgNC4zNzlWMTZ6IiBpZD0ib3V0bGluZSIvPj=
xwYXRoIGNsYXNzPSJpY29uLXZzLWZnIiBkPSJNMTMgMTRINFYyaDV2NGg0djh6bS0zLTlWMi4yM=
DdMMTIuNzkzIDVIMTB6IiBpZD0iaWNvbkZnIi8+PHBhdGggY2xhc3M9Imljb24tdnMtYmciIGQ9=
Ik0zIDF2MTRoMTFWNC43OTNMMTAuMjA3IDFIM3ptMTAgMTNINFYyaDV2NGg0djh6bS0zLTlWMi4=
yMDdMMTIuNzkzIDVIMTB6IiBpZD0iaWNvbkJnIi8+PC9zdmc+"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.reference, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-lis=
t-row .icon.reference { background-image: url("data:image/svg+xml;base64,PH=
N2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAxN=
iI+PHN0eWxlPi5pY29uLWNhbnZhcy10cmFuc3BhcmVudHtvcGFjaXR5OjA7ZmlsbDojMmQyZDMw=
fS5pY29uLXZzLW91dHtmaWxsOiMyZDJkMzB9Lmljb24tdnMtYmd7ZmlsbDojYzVjNWM1fS5pY29=
uLXZzLWZne2ZpbGw6IzJiMjgyZX0uaWNvbi12cy1hY3Rpb24tYmx1ZXtmaWxsOiM3NWJlZmZ9PC=
9zdHlsZT48cGF0aCBjbGFzcz0iaWNvbi1jYW52YXMtdHJhbnNwYXJlbnQiIGQ9Ik0xNiAxNkgwV=
jBoMTZ2MTZ6IiBpZD0iY2FudmFzIi8+PHBhdGggY2xhc3M9Imljb24tdnMtb3V0IiBkPSJNMTQg=
NC41NTZWMTNjMCAuOTctLjcwMSAyLTIgMkg0Yy0uOTcgMC0yLS43MDEtMi0yVjYuNjQ5QTMuNDk=
1IDMuNDk1IDAgMCAxIDAgMy41QzAgMS41NyAxLjU3IDAgMy41IDBINXYxaDUuMDYxTDE0IDQuNT=
U2eiIgaWQ9Im91dGxpbmUiIHN0eWxlPSJkaXNwbGF5OiBub25lOyIvPjxwYXRoIGNsYXNzPSJpY=
29uLXZzLWJnIiBkPSJNMTMgNXY4cy0uMDM1IDEtMS4wMzUgMWgtOFMzIDE0IDMgMTNWOWgxdjRo=
OFY2SDkuMzk3bC41MTctLjUyTDkgNC41NzJWM0g3LjQxOUw2LjQxMyAyaDMuMjI4TDEzIDV6IiB=
pZD0iaWNvbkJnIi8+PHBhdGggY2xhc3M9Imljb24tdnMtZmciIGQ9Ik03LjQxOSAzSDl2MS41Nz=
JMNy40MTkgM3ptMS45NzggM0w2LjQxNiA5SDR2NGg4VjZIOS4zOTd6IiBpZD0iaWNvbkZnIiBzd=
HlsZT0iZGlzcGxheTogbm9uZTsiLz48cGF0aCBjbGFzcz0iaWNvbi12cy1hY3Rpb24tYmx1ZSIg=
ZD0iTTUuOTg4IDZIMy41YTIuNSAyLjUgMCAxIDEgMC01SDR2MWgtLjVDMi42NzMgMiAyIDIuNjc=
zIDIgMy41UzIuNjczIDUgMy41IDVoMi41MTNMNCAzaDJsMi41IDIuNDg0TDYgOEg0bDEuOTg4LT=
J6IiBpZD0iY29sb3JBY3Rpb24iLz48L3N2Zz4=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.snippet, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-=
row .icon.snippet { background-image: url("data:image/svg+xml;base64,PD94bW=
wgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKI=
CAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIgogICB4bWxuczpj=
Yz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpyZGY9Imh0dHA6Ly9=
3d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOnN2Zz0iaHR0cD=
ovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL=
3N2ZyIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnNDY5NCIKICAgdmlld0JveD0iMCAwIDE2=
IDE2Ij4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0NzA1Ij4KICAgIDxyZGY6UkRGPgo=
gICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD=
5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZ=
GY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgog=
ICAgICAgIDxkYzp0aXRsZT48L2RjOnRpdGxlPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjp=
SREY+CiAgPC9tZXRhZGF0YT4KICA8ZGVmcwogICAgIGlkPSJkZWZzNDcwMyIgLz4KICA8c3R5bG=
UKICAgICBpZD0ic3R5bGU0Njk2Ij4uaWNvbi1jYW52YXMtdHJhbnNwYXJlbnR7b3BhY2l0eTowO=
2ZpbGw6I2Y2ZjZmNn0uaWNvbi12cy1vdXR7ZmlsbDojZjZmNmY2fS5pY29uLXZzLWFjdGlvbi1v=
cmFuZ2V7ZmlsbDojYzI3ZDFhfTwvc3R5bGU+CiAgPGcKICAgICBpZD0iZzQ3MjQiCiAgICAgdHJ=
hbnNmb3JtPSJtYXRyaXgoMS4zMzMzMzMzLDAsMCwxLjMzMzMzMzMsLTI0NS45OTk5OSwtMzEuOT=
k5OTk5KSI+CiAgICA8cGF0aAogICAgICAgZD0ibSAxODUsMjQgMTEsMCAwLDEyIC0xMSwwIHoiC=
iAgICAgICBpZD0icGF0aDQ1MjgiCiAgICAgICBzdHlsZT0iZmlsbDojMmQyZDMwIiAvPgogICAg=
PHBhdGgKICAgICAgIGQ9Im0gMTk0LDMzIDAsLTcgLTcsMCAwLDcgLTEsMCAwLC04IDksMCAwLDg=
geiBtIC04LDEgMSwwIDAsMSAtMSwwIHogbSAyLDAgMSwwIDAsMSAtMSwwIHogbSAyLDAgMSwwID=
AsMSAtMSwwIHogbSAyLDAgMSwwIDAsMSAtMSwwIHogbSAyLDAgMSwwIDAsMSAtMSwwIHoiCiAgI=
CAgICBpZD0icGF0aDQ1MzAiCiAgICAgICBzdHlsZT0iZmlsbDojYzVjNWM1IiAvPgogICAgPHBh=
dGgKICAgICAgIGQ9Im0gMTg3LDI2IDcsMCAwLDcgLTcsMCB6IgogICAgICAgaWQ9InBhdGg0NTM=
yIgogICAgICAgc3R5bGU9ImZpbGw6IzJiMjgyZSIgLz4KICA8L2c+Cjwvc3ZnPgo=3D"); }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.customcolor, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-l=
ist-row .icon.customcolor { background-image: none; }

.monaco-editor.hc-black .suggest-widget .monaco-list .monaco-list-row .icon=
.folder, .monaco-editor.vs-dark .suggest-widget .monaco-list .monaco-list-r=
ow .icon.folder { background-image: url("data:image/svg+xml;base64,PHN2ZyB4=
bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI=
+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4uaWNvbi1jYW52YXMtdHJhbnNwYXJlbnR7b3BhY2l0eT=
owO2ZpbGw6I0Y2RjZGNjt9IC5pY29uLXZzLW91dHtvcGFjaXR5OjA7ZmlsbDojRjZGNkY2O30gL=
mljb24tdnMtZmd7b3BhY2l0eTowO2ZpbGw6I0YwRUZGMTt9IC5pY29uLWZvbGRlcntmaWxsOiND=
NUM1QzU7fTwvc3R5bGU+PHBhdGggY2xhc3M9Imljb24tY2FudmFzLXRyYW5zcGFyZW50IiBkPSJ=
NMTYgMTZoLTE2di0xNmgxNnYxNnoiIGlkPSJjYW52YXMiLz48cGF0aCBjbGFzcz0iaWNvbi12cy=
1vdXQiIGQ9Ik0xNiAyLjV2MTBjMCAuODI3LS42NzMgMS41LTEuNSAxLjVoLTExLjk5NmMtLjgyN=
yAwLTEuNS0uNjczLTEuNS0xLjV2LThjMC0uODI3LjY3My0xLjUgMS41LTEuNWgyLjg4NmwxLTJo=
OC4xMWMuODI3IDAgMS41LjY3MyAxLjUgMS41eiIgaWQ9Im91dGxpbmUiLz48cGF0aCBjbGFzcz0=
iaWNvbi1mb2xkZXIiIGQ9Ik0xNC41IDJoLTcuNDkybC0xIDJoLTMuNTA0Yy0uMjc3IDAtLjUuMj=
I0LS41LjV2OGMwIC4yNzYuMjIzLjUuNS41aDExLjk5NmMuMjc1IDAgLjUtLjIyNC41LS41di0xM=
GMwLS4yNzYtLjIyNS0uNS0uNS0uNXptLS40OTYgMmgtNi40OTZsLjUtMWg1Ljk5NnYxeiIgaWQ9=
Imljb25CZyIvPjxwYXRoIGNsYXNzPSJpY29uLXZzLWZnIiBkPSJNMTQgM3YxaC02LjVsLjUtMWg=
2eiIgaWQ9Imljb25GZyIvPjwvc3ZnPg=3D=3D"); }

.monaco-editor .peekview-widget .head { box-sizing: border-box; }

.monaco-editor .peekview-widget .head .peekview-title { display: inline-blo=
ck; font-size: 13px; margin-left: 20px; cursor: pointer; }

.monaco-editor .peekview-widget .head .peekview-title .dirname:not(:empty) =
{ font-size: 0.9em; margin-left: 0.5em; }

.monaco-editor .peekview-widget .head .peekview-actions { display: inline-b=
lock; position: absolute; right: 2px; top: 2px; }

.monaco-editor .peekview-widget .head .peekview-actions .action-label { wid=
th: 16px; height: 16px; margin: 2px 0px; }

.monaco-editor .peekview-widget .head .peekview-actions .action-label.icon.=
close-peekview-action { background: url("data:image/svg+xml;base64,PHN2ZyB4=
bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI=
gdmlld0JveD0iMyAzIDE2IDE2IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDMgMyAxNiAxNiI+PH=
BvbHlnb24gZmlsbD0iIzQyNDI0MiIgcG9pbnRzPSIxMi41OTcsMTEuMDQyIDE1LjQsMTMuODQ1I=
DEzLjg0NCwxNS40IDExLjA0MiwxMi41OTggOC4yMzksMTUuNCA2LjY4MywxMy44NDUgOS40ODUs=
MTEuMDQyIDYuNjgzLDguMjM5IDguMjM4LDYuNjgzIDExLjA0Miw5LjQ4NiAxMy44NDUsNi42ODM=
gMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=3D") 50% center no-repeat; }

.monaco-editor .peekview-widget > .body { border-top: 1px solid; position: =
relative; }

.monaco-editor.hc-black .peekview-widget .head .peekview-actions .action-la=
bel.icon.close-peekview-action, .monaco-editor.vs-dark .peekview-widget .he=
ad .peekview-actions .action-label.icon.close-peekview-action { background:=
 url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjA=
wMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMyAzIDE2IDE2IiBlbmFibG=
UtYmFja2dyb3VuZD0ibmV3IDMgMyAxNiAxNiI+PHBvbHlnb24gZmlsbD0iI2U4ZThlOCIgcG9pb=
nRzPSIxMi41OTcsMTEuMDQyIDE1LjQsMTMuODQ1IDEzLjg0NCwxNS40IDExLjA0MiwxMi41OTgg=
OC4yMzksMTUuNCA2LjY4MywxMy44NDUgOS40ODUsMTEuMDQyIDYuNjgzLDguMjM5IDguMjM4LDY=
uNjgzIDExLjA0Miw5LjQ4NiAxMy44NDUsNi42ODMgMTUuNCw4LjIzOSIvPjwvc3ZnPg=3D=3D")=
 50% center no-repeat; }

.monaco-editor .zone-widget { position: absolute; z-index: 3; }

.monaco-editor .zone-widget .zone-widget-container { border-top-style: soli=
d; border-bottom-style: solid; border-top-width: 0px; border-bottom-width: =
0px; position: relative; }

.monaco-editor .accessibilityHelpWidget { padding: 10px; vertical-align: mi=
ddle; overflow: scroll; }

.monaco-editor .iPadShowKeyboard { width: 58px; min-width: 0px; height: 36p=
x; min-height: 0px; margin: 0px; padding: 0px; position: absolute; resize: =
none; overflow: hidden; background: url("data:image/svg+xml;base64,PHN2ZyB4=
bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1OCIgaGVpZ2h0PSIzNiI=
+PHBhdGggZmlsbD0iI0YwRUZGMSIgZD0iTTU0IDMydi0yOGgtNTB2MjhoNTB6bS0xNi0yaC0xOH=
YtNmgxOHY2em02IDBoLTR2LTZoNHY2em04IDBoLTZ2LTZoNnY2em0tNC0yNGg0djRoLTR2LTR6b=
TAgNmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR6bS02LTEyaDR2NGgtNHYtNHptMCA2aDR2NGgt=
NHYtNHptMCA2aDR2NGgtNHYtNHptLTYtMTJoNHY0aC00di00em0wIDZoNHY0aC00di00em0wIDZ=
oNHY0aC00di00em0tNi0xMmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LT=
R6bS02LTEyaDR2NGgtNHYtNHptMCA2aDR2NGgtNHYtNHptMCA2aDR2NGgtNHYtNHptLTYtMTJoN=
HY0aC00di00em0wIDZoNHY0aC00di00em0wIDZoNHY0aC00di00em0wIDEyaC00di02aDR2Nnpt=
LTYtMjRoNHY0aC00di00em0wIDZoNHY0aC00di00em0wIDZoNHY0aC00di00em0tNi0xMmg0djR=
oLTR2LTR6bTAgNmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR6bTAgNmg2djZoLTZ2LTZ6Ii8+PH=
BhdGggZmlsbD0iIzQyNDI0MiIgZD0iTTU1LjMzNiAwaC01My4yODVjLTEuMzQ0IDAtMi4wNTEuN=
jU2LTIuMDUxIDJ2MzJjMCAxLjM0NC43MDcgMS45NjUgMi4wNTEgMS45NjVsNTMuOTQ5LjAzNWMx=
LjM0NCAwIDItLjY1NiAyLTJ2LTMyYzAtMS4zNDQtMS4zMi0yLTIuNjY0LTJ6bS0xLjMzNiAzMmg=
tNTB2LTI4aDUwdjI4eiIvPjxyZWN0IHg9IjYiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB3aWR0aD=
0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMTIiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB3aWR0a=
D0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMTgiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB3aWR0=
aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMjQiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB3aWR=
0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMzAiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB3aW=
R0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMzYiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB3a=
WR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNDIiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB3=
aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNDgiIHk9IjEyIiBmaWxsPSIjNDI0MjQyIiB=
3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNiIgeT0iNiIgZmlsbD0iIzQyNDI0MiIgd2=
lkdGg9IjQiIGhlaWdodD0iNCIvPjxyZWN0IHg9IjEyIiB5PSI2IiBmaWxsPSIjNDI0MjQyIiB3a=
WR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMTgiIHk9IjYiIGZpbGw9IiM0MjQyNDIiIHdp=
ZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIyNCIgeT0iNiIgZmlsbD0iIzQyNDI0MiIgd2l=
kdGg9IjQiIGhlaWdodD0iNCIvPjxyZWN0IHg9IjMwIiB5PSI2IiBmaWxsPSIjNDI0MjQyIiB3aW=
R0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMzYiIHk9IjYiIGZpbGw9IiM0MjQyNDIiIHdpZ=
HRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI0MiIgeT0iNiIgZmlsbD0iIzQyNDI0MiIgd2lk=
dGg9IjQiIGhlaWdodD0iNCIvPjxyZWN0IHg9IjQ4IiB5PSI2IiBmaWxsPSIjNDI0MjQyIiB3aWR=
0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNiIgeT0iMTgiIGZpbGw9IiM0MjQyNDIiIHdpZH=
RoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIxMiIgeT0iMTgiIGZpbGw9IiM0MjQyNDIiIHdpZ=
HRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIxOCIgeT0iMTgiIGZpbGw9IiM0MjQyNDIiIHdp=
ZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIyNCIgeT0iMTgiIGZpbGw9IiM0MjQyNDIiIHd=
pZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIzMCIgeT0iMTgiIGZpbGw9IiM0MjQyNDIiIH=
dpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIzNiIgeT0iMTgiIGZpbGw9IiM0MjQyNDIiI=
HdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI0MiIgeT0iMTgiIGZpbGw9IiM0MjQyNDIi=
IHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI0OCIgeT0iMTgiIGZpbGw9IiM0MjQyNDI=
iIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI2IiB5PSIyNCIgZmlsbD0iIzQyNDI0Mi=
Igd2lkdGg9IjYiIGhlaWdodD0iNiIvPjxyZWN0IHg9IjQ2IiB5PSIyNCIgZmlsbD0iIzQyNDI0M=
iIgd2lkdGg9IjYiIGhlaWdodD0iNiIvPjxyZWN0IHg9IjIwIiB5PSIyNCIgZmlsbD0iIzQyNDI0=
MiIgd2lkdGg9IjE4IiBoZWlnaHQ9IjYiLz48cmVjdCB4PSIxNCIgeT0iMjQiIGZpbGw9IiM0MjQ=
yNDIiIHdpZHRoPSI0IiBoZWlnaHQ9IjYiLz48cmVjdCB4PSI0MCIgeT0iMjQiIGZpbGw9IiM0Mj=
QyNDIiIHdpZHRoPSI0IiBoZWlnaHQ9IjYiLz48L3N2Zz4=3D") 50% center no-repeat; bo=
rder: 4px solid rgb(246, 246, 246); border-radius: 4px; }

.monaco-editor.vs-dark .iPadShowKeyboard { background: url("data:image/svg+=
xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1=
OCIgaGVpZ2h0PSIzNiI+PHBhdGggZmlsbD0iIzJCMjgyRSIgZD0iTTU0IDMydi0yOGgtNTB2Mjh=
oNTB6bS0xNi0yaC0xOHYtNmgxOHY2em02IDBoLTR2LTZoNHY2em04IDBoLTZ2LTZoNnY2em0tNC=
0yNGg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR6bS02LTEyaDR2NGgtN=
HYtNHptMCA2aDR2NGgtNHYtNHptMCA2aDR2NGgtNHYtNHptLTYtMTJoNHY0aC00di00em0wIDZo=
NHY0aC00di00em0wIDZoNHY0aC00di00em0tNi0xMmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR=
6bTAgNmg0djRoLTR2LTR6bS02LTEyaDR2NGgtNHYtNHptMCA2aDR2NGgtNHYtNHptMCA2aDR2NG=
gtNHYtNHptLTYtMTJoNHY0aC00di00em0wIDZoNHY0aC00di00em0wIDZoNHY0aC00di00em0wI=
DEyaC00di02aDR2NnptLTYtMjRoNHY0aC00di00em0wIDZoNHY0aC00di00em0wIDZoNHY0aC00=
di00em0tNi0xMmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR6bTAgNmg0djRoLTR2LTR6bTAgNmg=
2djZoLTZ2LTZ6Ii8+PHBhdGggZmlsbD0iI0M1QzVDNSIgZD0iTTU1LjMzNiAwaC01My4yODVjLT=
EuMzQ0IDAtMi4wNTEuNjU2LTIuMDUxIDJ2MzJjMCAxLjM0NC43MDcgMS45NjUgMi4wNTEgMS45N=
jVsNTMuOTQ5LjAzNWMxLjM0NCAwIDItLjY1NiAyLTJ2LTMyYzAtMS4zNDQtMS4zMi0yLTIuNjY0=
LTJ6bS0xLjMzNiAzMmgtNTB2LTI4aDUwdjI4eiIvPjxyZWN0IHg9IjYiIHk9IjEyIiBmaWxsPSI=
jQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMTIiIHk9IjEyIiBmaWxsPS=
IjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMTgiIHk9IjEyIiBmaWxsP=
SIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMjQiIHk9IjEyIiBmaWxs=
PSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMzAiIHk9IjEyIiBmaWx=
sPSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMzYiIHk9IjEyIiBmaW=
xsPSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNDIiIHk9IjEyIiBma=
WxsPSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNDgiIHk9IjEyIiBm=
aWxsPSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNiIgeT0iNiIgZml=
sbD0iI0M1QzVDNSIgd2lkdGg9IjQiIGhlaWdodD0iNCIvPjxyZWN0IHg9IjEyIiB5PSI2IiBmaW=
xsPSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMTgiIHk9IjYiIGZpb=
Gw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIyNCIgeT0iNiIgZmls=
bD0iI0M1QzVDNSIgd2lkdGg9IjQiIGhlaWdodD0iNCIvPjxyZWN0IHg9IjMwIiB5PSI2IiBmaWx=
sPSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iMzYiIHk9IjYiIGZpbG=
w9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI0MiIgeT0iNiIgZmlsb=
D0iI0M1QzVDNSIgd2lkdGg9IjQiIGhlaWdodD0iNCIvPjxyZWN0IHg9IjQ4IiB5PSI2IiBmaWxs=
PSIjQzVDNUM1IiB3aWR0aD0iNCIgaGVpZ2h0PSI0Ii8+PHJlY3QgeD0iNiIgeT0iMTgiIGZpbGw=
9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIxMiIgeT0iMTgiIGZpbG=
w9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIxOCIgeT0iMTgiIGZpb=
Gw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIyNCIgeT0iMTgiIGZp=
bGw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIzMCIgeT0iMTgiIGZ=
pbGw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSIzNiIgeT0iMTgiIG=
ZpbGw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI0MiIgeT0iMTgiI=
GZpbGw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI0OCIgeT0iMTgi=
IGZpbGw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjQiLz48cmVjdCB4PSI2IiB5PSIyNCI=
gZmlsbD0iI0M1QzVDNSIgd2lkdGg9IjYiIGhlaWdodD0iNiIvPjxyZWN0IHg9IjQ2IiB5PSIyNC=
IgZmlsbD0iI0M1QzVDNSIgd2lkdGg9IjYiIGhlaWdodD0iNiIvPjxyZWN0IHg9IjIwIiB5PSIyN=
CIgZmlsbD0iI0M1QzVDNSIgd2lkdGg9IjE4IiBoZWlnaHQ9IjYiLz48cmVjdCB4PSIxNCIgeT0i=
MjQiIGZpbGw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjYiLz48cmVjdCB4PSI0MCIgeT0=
iMjQiIGZpbGw9IiNDNUM1QzUiIHdpZHRoPSI0IiBoZWlnaHQ9IjYiLz48L3N2Zz4=3D") 50% c=
enter no-repeat; border: 4px solid rgb(37, 37, 38); }

.monaco-editor .tokens-inspect-widget { z-index: 5; user-select: text; padd=
ing: 10px; }

.tokens-inspect-separator { height: 1px; border: 0px; }

.monaco-editor .tokens-inspect-widget .tm-token { font-family: monospace; }

.monaco-editor .tokens-inspect-widget .tm-token-length { font-weight: 400; =
font-size: 60%; float: right; }

.monaco-editor .tokens-inspect-widget .tm-metadata-table { width: 100%; }

.monaco-editor .tokens-inspect-widget .tm-metadata-value { font-family: mon=
ospace; text-align: right; }

.monaco-editor .tokens-inspect-widget .tm-token-type { font-family: monospa=
ce; }

.quick-open-widget { font-size: 13px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n, .vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-op=
en-entry-icon { background-image: url("standalone/browser/quickOpen/symbol-=
sprite.svg"); background-repeat: no-repeat; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.constructor, .quick-open-widget .quick-open-tree .quick-open-entry .quick=
-open-entry-icon.function, .quick-open-widget .quick-open-tree .quick-open-=
entry .quick-open-entry-icon.method { background-position: 0px -4px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.field, .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.variable { background-position: -22px -4px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.class { background-position: -43px -3px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.interface { background-position: -63px -4px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.module { background-position: -82px -4px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.property { background-position: -102px -3px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.enum { background-position: -122px -3px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.rule { background-position: -242px -4px; }

.quick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-ico=
n.file { background-position: -262px -4px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.constructor, .vs-dark .quick-open-widget .quick-open-tree .quick=
-open-entry .quick-open-entry-icon.function, .vs-dark .quick-open-widget .q=
uick-open-tree .quick-open-entry .quick-open-entry-icon.method { background=
-position: 0px -24px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.field, .vs-dark .quick-open-widget .quick-open-tree .quick-open-=
entry .quick-open-entry-icon.variable { background-position: -22px -24px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.class { background-position: -43px -23px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.interface { background-position: -63px -24px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.module { background-position: -82px -24px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.property { background-position: -102px -23px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.enum { background-position: -122px -23px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.rule { background-position: -242px -24px; }

.vs-dark .quick-open-widget .quick-open-tree .quick-open-entry .quick-open-=
entry-icon.file { background-position: -262px -24px; }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon { background: none; display: inline; }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon::before { height: 16px; width: 16px; display: inline-block; }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.constructor::before, .hc-black .quick-open-widget .quick-open-t=
ree .quick-open-entry .quick-open-entry-icon.function::before, .hc-black .q=
uick-open-widget .quick-open-tree .quick-open-entry .quick-open-entry-icon.=
method::before { content: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaH=
R0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PHBhdGggZ=
mlsbD0iI0IxODBENyIgZD0iTTUuNSAzbC00LjUgMi44NTd2NC4yODVsNC41IDIuODU4IDQuNS0y=
Ljg1N3YtNC4yODZsLTQuNS0yLjg1N3ptLS41IDguNDk4bC0zLTEuOTA1di0yLjgxNmwzIDEuOTA=
1djIuODE2em0tMi4zNTgtNS40OThsMi44NTgtMS44MTUgMi44NTggMS44MTUtMi44NTggMS44MT=
UtMi44NTgtMS44MTV6bTYuMzU4IDMuNTkzbC0zIDEuOTA1di0yLjgxNWwzLTEuOTA1djIuODE1e=
iIvPjwvc3ZnPg=3D=3D"); margin-left: 2px; }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.field::before, .hc-black .quick-open-widget .quick-open-tree .q=
uick-open-entry .quick-open-entry-icon.variable::before { content: url("dat=
a:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmci=
IHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PHBhdGggZmlsbD0iIzc1QkVGRiIgZD0iTTEgNnY0bDQ=
gMiA2LTN2LTRsLTQtMi02IDN6bTQgMWwtMi0xIDQtMiAyIDEtNCAyeiIvPjwvc3ZnPg=3D=3D")=
; margin-left: 2px; }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.class::before { content: url("data:image/svg+xml;base64,PHN2ZyB=
4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNi=
I+PHBvbHlnb24gZmlsbD0iI0U4QUI1MyIgcG9pbnRzPSIxMS45OTgsMTEuMDAyIDksMTEgOSw3I=
DExLDcgMTAsOCAxMiwxMCAxNSw3IDEzLDUgMTIsNiA3LDYgOSw0IDYsMSAxLDYgNCw5IDYsNyA4=
LDcgOCwxMiAxMSwxMiAxMCwxMyAxMiwxNSAxNSwxMiAxMywxMCIvPjwvc3ZnPg=3D=3D"); }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.interface::before { content: url("data:image/svg+xml;base64,PHN=
2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PS=
IxNiI+PHBhdGggZmlsbD0iIzc1QkVGRiIgZD0iTTExLjUgNGMtMS43NTkgMC0zLjIwNCAxLjMwO=
C0zLjQ0OSAzaC0zLjEyMmMtLjIyMy0uODYxLS45OTgtMS41LTEuOTI5LTEuNS0xLjEwNCAwLTIg=
Ljg5NS0yIDIgMCAxLjEwNC44OTYgMiAyIDIgLjkzMSAwIDEuNzA2LS42MzkgMS45MjktMS41aDM=
uMTIyYy4yNDUgMS42OTEgMS42OSAzIDMuNDQ5IDMgMS45MyAwIDMuNS0xLjU3IDMuNS0zLjUgMC=
0xLjkzMS0xLjU3LTMuNS0zLjUtMy41em0wIDVjLS44MjcgMC0xLjUtLjY3NC0xLjUtMS41IDAtL=
jgyOC42NzMtMS41IDEuNS0xLjVzMS41LjY3MiAxLjUgMS41YzAgLjgyNi0uNjczIDEuNS0xLjUg=
MS41eiIvPjwvc3ZnPg=3D=3D"); }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.module::before { content: url("data:image/svg+xml;base64,PHN2Zy=
B4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxN=
iI+PHBhdGggZmlsbD0iI0M1QzVDNSIgZD0iTTkgMTF2LTFjMC0uODM0LjQ5Ni0xLjczOCAxLTIt=
LjUwNC0uMjctMS0xLjE2OC0xLTJ2LTFjMC0uODQtLjU4NC0xLTEtMXYtMWMyLjA4MyAwIDIgMS4=
xNjYgMiAydjFjMCAuOTY5LjcwMy45OCAxIDF2MmMtLjMyMi4wMi0xIC4wNTMtMSAxdjFjMCAuOD=
M0LjA4MyAyLTIgMnYtMWMuODMzIDAgMS0xIDEtMXptLTYgMHYtMWMwLS44MzQtLjQ5Ni0xLjczO=
C0xLTIgLjUwNC0uMjcgMS0xLjE2OCAxLTJ2LTFjMC0uODQuNTg0LTEgMS0xdi0xYy0yLjA4MyAw=
LTIgMS4xNjYtMiAydjFjMCAuOTY5LS43MDMuOTgtMSAxdjJjLjMyMi4wMiAxIC4wNTMgMSAxdjF=
jMCAuODM0LS4wODMgMiAyIDJ2LTFjLS44MzMgMC0xLTEtMS0xeiIvPjwvc3ZnPg=3D=3D"); ma=
rgin-left: 2px; }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.property::before { content: url("data:image/svg+xml;base64,PHN2=
ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSI=
xNiI+PHBhdGggZmlsbD0iI0M1QzVDNSIgZD0iTTEyLjA5IDQuMzU5bC0yLjY0MSAyLjY0MS0yLT=
IgMi42NDEtMi42NDFjLS41MDItLjIyNi0xLjA1NS0uMzU5LTEuNjQxLS4zNTktMi4yMDkgMC00I=
DEuNzkxLTQgNCAwIC41ODYuMTMzIDEuMTM5LjM1OSAxLjY0bC0zLjM1OSAzLjM2cy0xIDEgMCAy=
aDJsMy4zNTktMy4zNmMuNTAzLjIyNiAxLjA1NS4zNiAxLjY0MS4zNiAyLjIwOSAwIDQtMS43OTE=
gNC00IDAtLjU4Ni0uMTMzLTEuMTM5LS4zNTktMS42NDF6Ii8+PC9zdmc+"); margin-left: 1=
px; }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.enum::before, .hc-black .quick-open-widget .quick-open-tree .qu=
ick-open-entry .quick-open-entry-icon.value::before { content: url("data:im=
age/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdp=
ZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PGcgZmlsbD0iIzc1QkVGRiI+PHBhdGggZD0iTTEyIDNoLTR=
sLTEgMXYyaDV2MWgtMnYxaDJsMS0xdi0zbC0xLTF6bTAgMmgtNHYtMWg0djF6TTMgMTJoNnYtNW=
gtNnY1em0xLTNoNHYxaC00di0xeiIvPjwvZz48L3N2Zz4=3D"); }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.rule::before { content: url("data:image/svg+xml;base64,PHN2ZyB4=
bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiI=
+PHBhdGggZmlsbD0iI0M1QzVDNSIgZD0iTTEwIDVoLTh2LTJoOHYyem0wIDFoLTZ2MWg2di0xem=
0wIDJoLTZ2MWg2di0xeiIvPjwvc3ZnPg=3D=3D"); }

.hc-black .quick-open-widget .quick-open-tree .quick-open-entry .quick-open=
-entry-icon.file::before { content: url("data:image/svg+xml;base64,PHN2ZyB4=
bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI=
+PHBhdGggZmlsbD0iI0M1QzVDNSIgZD0iTTkuNjc2IDJoLTYuNjc2djEyaDEwdi05bC0zLjMyNC=
0zem0yLjMyNCAxMWgtOHYtMTBoNXYzaDN2N3oiLz48L3N2Zz4=3D"); }

.monaco-editor { font-family: -apple-system, BlinkMacSystemFont, "Segoe WPC=
", "Segoe UI", HelveticaNeue-Light, Ubuntu, "Droid Sans", sans-serif; }

.monaco-menu .monaco-action-bar.vertical .action-item .action-label:focus {=
 color: rgb(0, 89, 172); stroke-width: 1.2px; text-shadow: rgb(0, 89, 172) =
0px 0px 0.15px; }

.monaco-editor.hc-black .monaco-menu .monaco-action-bar.vertical .action-it=
em .action-label:focus, .monaco-editor.vs-dark .monaco-menu .monaco-action-=
bar.vertical .action-item .action-label:focus { color: rgb(172, 221, 255); =
stroke-width: 1.2px; text-shadow: rgb(172, 221, 255) 0px 0px 0.15px; }

.monaco-editor-hover p { margin: 0px; }

.monaco-editor.hc-black { }

@media not all {
  .monaco-editor.vs-dark .view-overlays .current-line, .monaco-editor.vs .v=
iew-overlays .current-line { border-left-width: 0px; border-left-style: ini=
tial; border-right-width: 0px; border-right-style: initial; border-color: w=
indowtext !important; }
  .monaco-editor.vs-dark .cursor, .monaco-editor.vs .cursor { background-co=
lor: windowtext !important; }
  .monaco-editor.vs-dark .dnd-target, .monaco-editor.vs .dnd-target { borde=
r-color: windowtext !important; }
  .monaco-editor.vs-dark .selected-text, .monaco-editor.vs .selected-text {=
 background-color: highlight !important; }
  .monaco-editor.vs-dark .view-line, .monaco-editor.vs .view-line { }
  .monaco-editor.vs-dark .view-line span, .monaco-editor.vs .view-line span=
 { color: windowtext !important; }
  .monaco-editor.vs-dark .view-line span.inline-selected-text, .monaco-edit=
or.vs .view-line span.inline-selected-text { color: highlighttext !importan=
t; }
  .monaco-editor.vs-dark .view-overlays, .monaco-editor.vs .view-overlays {=
 }
  .monaco-editor.vs-dark .reference-decoration, .monaco-editor.vs-dark .sel=
ectionHighlight, .monaco-editor.vs-dark .wordHighlight, .monaco-editor.vs-d=
ark .wordHighlightStrong, .monaco-editor.vs .reference-decoration, .monaco-=
editor.vs .selectionHighlight, .monaco-editor.vs .wordHighlight, .monaco-ed=
itor.vs .wordHighlightStrong { box-sizing: border-box; border: 2px dotted h=
ighlight !important; background: transparent !important; }
  .monaco-editor.vs-dark .rangeHighlight, .monaco-editor.vs .rangeHighlight=
 { box-sizing: border-box; background: transparent !important; border: 1px =
dotted activeborder !important; }
  .monaco-editor.vs-dark .bracket-match, .monaco-editor.vs .bracket-match {=
 border-color: windowtext !important; background: transparent !important; }
  .monaco-editor.vs-dark .currentFindMatch, .monaco-editor.vs-dark .findMat=
ch, .monaco-editor.vs .currentFindMatch, .monaco-editor.vs .findMatch { box=
-sizing: border-box; border: 2px dotted activeborder !important; background=
: transparent !important; }
  .monaco-editor.vs-dark .find-widget, .monaco-editor.vs .find-widget { bor=
der: 1px solid windowtext; }
  .monaco-editor.vs-dark .monaco-list .monaco-list-row, .monaco-editor.vs .=
monaco-list .monaco-list-row { color: windowtext !important; }
  .monaco-editor.vs-dark .monaco-list .monaco-list-row.focused, .monaco-edi=
tor.vs .monaco-list .monaco-list-row.focused { color: highlighttext !import=
ant; background-color: highlight !important; }
  .monaco-editor.vs-dark .monaco-list .monaco-list-row:hover, .monaco-edito=
r.vs .monaco-list .monaco-list-row:hover { border: 1px solid highlight; box=
-sizing: border-box; background: transparent !important; }
  .monaco-editor.vs-dark .monaco-tree .monaco-tree-row, .monaco-editor.vs .=
monaco-tree .monaco-tree-row { color: windowtext !important; }
  .monaco-editor.vs-dark .monaco-tree .monaco-tree-row.focused, .monaco-edi=
tor.vs-dark .monaco-tree .monaco-tree-row.selected, .monaco-editor.vs .mona=
co-tree .monaco-tree-row.focused, .monaco-editor.vs .monaco-tree .monaco-tr=
ee-row.selected { color: highlighttext !important; background-color: highli=
ght !important; }
  .monaco-editor.vs-dark .monaco-tree .monaco-tree-row:hover, .monaco-edito=
r.vs .monaco-tree .monaco-tree-row:hover { border: 1px solid highlight; box=
-sizing: border-box; background: transparent !important; }
  .monaco-editor.vs-dark .monaco-scrollable-element > .scrollbar, .monaco-e=
ditor.vs .monaco-scrollable-element > .scrollbar { border: 1px solid window=
text; box-sizing: border-box; background: background !important; }
  .monaco-editor.vs-dark .monaco-scrollable-element > .scrollbar > .slider,=
 .monaco-editor.vs .monaco-scrollable-element > .scrollbar > .slider { back=
ground: windowtext !important; }
  .monaco-editor.vs-dark .monaco-scrollable-element > .scrollbar > .slider.=
active, .monaco-editor.vs-dark .monaco-scrollable-element > .scrollbar > .s=
lider:hover, .monaco-editor.vs .monaco-scrollable-element > .scrollbar > .s=
lider.active, .monaco-editor.vs .monaco-scrollable-element > .scrollbar > .=
slider:hover { background: highlight !important; }
  .monaco-editor.vs-dark .decorationsOverviewRuler, .monaco-editor.vs .deco=
rationsOverviewRuler { opacity: 0; }
  .monaco-editor.vs-dark .minimap, .monaco-editor.vs .minimap { display: no=
ne; }
  .monaco-editor.vs-dark .redsquiggly, .monaco-editor.vs .redsquiggly { bor=
der-bottom: 4px double rgb(228, 119, 119); background: transparent !importa=
nt; }
  .monaco-editor.vs-dark .greensquiggly, .monaco-editor.vs .greensquiggly {=
 border-bottom: 4px double rgb(113, 183, 113); }
  .monaco-editor.vs-dark .monaco-menu .monaco-action-bar.vertical .action-i=
tem .action-label:focus, .monaco-editor.vs .monaco-menu .monaco-action-bar.=
vertical .action-item .action-label:focus { color: highlighttext !important=
; background-color: highlight !important; }
  .monaco-editor.vs-dark .monaco-menu .monaco-action-bar.vertical .action-i=
tem .action-label:hover, .monaco-editor.vs .monaco-menu .monaco-action-bar.=
vertical .action-item .action-label:hover { border: 1px solid highlight; bo=
x-sizing: border-box; background: transparent !important; }
  .monaco-diff-editor.vs-dark .diffOverviewRuler, .monaco-diff-editor.vs .d=
iffOverviewRuler { display: none; }
  .monaco-editor.vs-dark .line-delete, .monaco-editor.vs-dark .line-insert,=
 .monaco-editor.vs .line-delete, .monaco-editor.vs .line-insert { box-sizin=
g: border-box; background: transparent !important; border: 1px solid highli=
ght !important; }
  .monaco-editor.vs-dark .char-delete, .monaco-editor.vs-dark .char-insert,=
 .monaco-editor.vs .char-delete, .monaco-editor.vs .char-insert { backgroun=
d: transparent !important; }
}

.context-view .monaco-menu { min-width: 130px; }
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: text/css
Content-Transfer-Encoding: quoted-printable
Content-Location: https://leanprover.github.io/live/latest/index.css

@charset "utf-8";

body { margin: 0px; }

.Resizer { box-sizing: border-box; background: padding-box rgb(0, 0, 0); op=
acity: 0.2; z-index: 1; }

.Resizer:hover { transition: all 2s ease 0s; }

.Resizer.horizontal { height: 11px; margin: 5px 0px; border-top: 5px solid =
rgba(255, 255, 255, 0); border-bottom: 5px solid rgba(255, 255, 255, 0); cu=
rsor: row-resize; width: 100%; }

.Resizer.horizontal:hover { border-top: 5px solid rgba(0, 0, 0, 0.5); borde=
r-bottom: 5px solid rgba(0, 0, 0, 0.5); }

.Resizer.vertical { width: 11px; margin: 0px 5px; border-left: 5px solid rg=
ba(255, 255, 255, 0); border-right: 5px solid rgba(255, 255, 255, 0); curso=
r: col-resize; }

.Resizer.vertical:hover { border-left: 5px solid rgba(0, 0, 0, 0.5); border=
-right: 5px solid rgba(0, 0, 0, 0.5); }
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt----
Content-Type: image/svg+xml
Content-Transfer-Encoding: quoted-printable
Content-Location: https://leanprover.github.io/live/latest/lean_logo.svg

<?xml version=3D"1.0" encoding=3D"UTF-8" standalone=3D"no"?>
<svg
   xmlns:dc=3D"http://purl.org/dc/elements/1.1/"
   xmlns:cc=3D"http://creativecommons.org/ns#"
   xmlns:rdf=3D"http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg=3D"http://www.w3.org/2000/svg"
   xmlns=3D"http://www.w3.org/2000/svg"
   xmlns:xlink=3D"http://www.w3.org/1999/xlink"
   xmlns:sodipodi=3D"http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape=3D"http://www.inkscape.org/namespaces/inkscape"
   width=3D"300"
   height=3D"150"
   viewBox=3D"0 0 240 120"
   version=3D"1.1"
   id=3D"svg2"
   inkscape:version=3D"0.48.4 r9939"
   sodipodi:docname=3D"lean_logo.svg">
  <metadata
     id=3D"metadata113">
    <rdf:RDF>
      <cc:Work
         rdf:about=3D"">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource=3D"http://purl.org/dc/dcmitype/StillImage" />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <sodipodi:namedview
     pagecolor=3D"#ffffff"
     bordercolor=3D"#666666"
     borderopacity=3D"1"
     objecttolerance=3D"10"
     gridtolerance=3D"10"
     guidetolerance=3D"10"
     inkscape:pageopacity=3D"0"
     inkscape:pageshadow=3D"2"
     inkscape:window-width=3D"1244"
     inkscape:window-height=3D"759"
     id=3D"namedview111"
     showgrid=3D"false"
     inkscape:zoom=3D"0.30337662"
     inkscape:cx=3D"553.28599"
     inkscape:cy=3D"259.375"
     inkscape:window-x=3D"50"
     inkscape:window-y=3D"48"
     inkscape:window-maximized=3D"0"
     inkscape:current-layer=3D"svg2" />
  <defs
     id=3D"defs4">
    <g
       id=3D"g6">
      <symbol
         overflow=3D"visible"
         id=3D"glyph0-0"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m -5.140625,0 -180.499995,0 0,-262.4375 180.499995,0 z M -1=
78.125,-250.15625 l 0,237.09375 79.171875,-118.75 z m 5.14063,243.03125 154=
.781245,0 -77.1875,-117.5625 z m 77.593745,-131.8125 77.1875,-116.375 -154.=
781245,0 z m 3.5625,7.125 79.15625,118.75 0,-237.09375 z"
           id=3D"path9"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph0-1"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m -24.9375,-135.375 -143.29687,0 0,-6.32812 143.29687,0 0,-=
129.04688 -146.45312,0 0,-5.9375 152.781245,0 0,276.6875 -153.578125,0 0,-5=
.9375 147.25,0 z"
           id=3D"path12"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph1-0"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 5.140625,0 180.499995,0 0,-262.4375 -180.499995,0 z M 178=
.125,-250.15625 l 0,237.09375 -79.171875,-118.75 z m -5.14063,243.03125 -15=
4.781245,0 77.1875,-117.5625 z m -77.593745,-131.8125 -77.1875,-116.375 154=
.781245,0 z m -3.5625,7.125 -79.15625,118.75 0,-237.09375 z"
           id=3D"path15"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph1-1"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 24.9375,0 0,-264.40625 L 207.8125,0 l 6.32812,0 0,-277.07=
812 -5.9375,0 0,265.999995 -184.062495,-265.999995 -5.53125,-0.39063 0,277.=
46875 z"
           id=3D"path18"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph1-2"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 24.9375,-276.6875 -6.328125,0 0,276.6875 C 70.453125,0 12=
1.92188,0 173.76562,0 l 0,-6.328125 -148.82812,0 z"
           id=3D"path21"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-0"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 1.21875,0 42.5,0 0,-61.796875 -42.5,0 z m 40.734375,-58.9=
21875 0,55.84375 -18.640625,-27.96875 z m -1.21875,57.25 -36.453125,0 18.18=
75,-27.6875 z M 22.46875,-32.71875 4.28125,-60.125 l 36.453125,0 z m -0.843=
75,1.671875 -18.640625,27.96875 0,-55.84375 z"
           id=3D"path24"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-1"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 24.796875,0.28125 0,-64.046875 22.5625,0 0,-1.484375 -46.=
515625,0 0,1.484375 22.546875,0 0,64.046875 z"
           id=3D"path27"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-2"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 5.78125,-65.15625 -1.40625,0 0,65.15625 1.40625,0 0,-32.3=
4375 40.921875,0 0,32.34375 1.484375,0 0,-65.15625 -1.484375,0 0,31.40625 -=
40.921875,0 z"
           id=3D"path30"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-3"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 5.875,-31.875 33.75,0 0,-1.5 -33.75,0 0,-30.390625 34.484=
375,0 0,-1.390625 -35.984375,0 0,65.15625 36.171875,0 0,-1.390625 -34.67187=
5,0 z"
           id=3D"path33"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-4"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 67.765625,-32.625 c 0,8.859375 -3.53125,16.78125 -9.21875=
,22.5625 -5.78125,5.875 -13.796875,9.5 -22.5625,9.5 -8.765625,0 -16.6875,-3=
.625 -22.46875,-9.5 C 7.828125,-15.84375 4.1875,-23.765625 4.1875,-32.625 c=
 0,-8.859375 3.640625,-16.78125 9.328125,-22.5625 5.78125,-5.875 13.703125,=
-9.5 22.46875,-9.5 8.765625,0 16.78125,3.625 22.5625,9.5 5.6875,5.78125 9.2=
1875,13.703125 9.21875,22.5625 z m -65.0625,0 c 0,9.234375 3.828125,17.6093=
75 9.78125,23.671875 5.96875,6.15625 14.359375,9.890625 23.5,9.890625 9.234=
375,0 17.515625,-3.734375 23.578125,-9.890625 5.96875,-6.0625 9.796875,-14.=
4375 9.796875,-23.671875 0,-9.234375 -3.828125,-17.625 -9.796875,-23.671875=
 C 53.5,-62.453125 45.21875,-66.1875 35.984375,-66.1875 c -9.140625,0 -17.5=
3125,3.734375 -23.5,9.890625 C 6.53125,-50.25 2.703125,-41.859375 2.703125,=
-32.625 z"
           id=3D"path36"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-5"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 5.78125,-63.765625 21.15625,0 c 24.234375,0 24.234375,35.=
234375 0,35.234375 l -12.671875,0 0,1.40625 L 44.28125,0 46.421875,0 16.406=
25,-27.125 l 10.53125,0 c 26.109375,0 26.109375,-38.125 0,-38.125 l -22.562=
5,0 0,65.25 1.40625,0 z"
           id=3D"path39"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-6"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 5.78125,-63.109375 26.5625,39.53125 1.21875,0 26.5625,-39=
.53125 0,63.109375 1.40625,0 0,-65.25 -1.5,0 -27.125,39.984375 L 5.875,-65.=
25 l -1.5,0 0,65.25 1.40625,0 z"
           id=3D"path42"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-7"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D""
           id=3D"path45"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-8"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 4.375,-64.5 c 0,21.53125 0,42.96875 0,64.5 l 1.5,0 0,-24.=
796875 21.0625,0 c 26.109375,0 26.109375,-40.453125 0,-40.453125 l -22.5625=
,0 z m 1.5,38.3125 0,-37.578125 21.0625,0 c 24.234375,0 24.234375,37.578125=
 0,37.578125 z"
           id=3D"path48"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-9"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 5.78125,-63.765625 21.15625,0 c 24.234375,0 24.234375,35.=
234375 0,35.234375 l -12.671875,0 0,1.40625 L 44.28125,0 46.421875,0 16.406=
25,-27.125 l 10.53125,0 c 26.109375,0 26.109375,-38.125 0,-38.125 l -22.562=
5,0 0,65.25 1.40625,0 z"
           id=3D"path51"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-10"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 67.03125,-32.625 c 0,8.859375 -3.546875,16.78125 -9.23437=
5,22.5625 -5.78125,5.875 -13.796875,9.5 -22.5625,9.5 -8.765625,0 -16.6875,-=
3.625 -22.46875,-9.5 -5.6875,-5.78125 -9.3125,-13.703125 -9.3125,-22.5625 0=
,-8.859375 3.625,-16.78125 9.3125,-22.5625 5.78125,-5.875 13.703125,-9.5 22=
.46875,-9.5 8.765625,0 16.78125,3.625 22.5625,9.5 5.6875,5.78125 9.234375,1=
3.703125 9.234375,22.5625 z m -65.078125,0 c 0,9.234375 3.828125,17.609375 =
9.796875,23.671875 5.96875,6.15625 14.34375,9.890625 23.484375,9.890625 9.2=
34375,0 17.53125,-3.734375 23.59375,-9.890625 5.953125,-6.0625 9.78125,-14.=
4375 9.78125,-23.671875 0,-9.234375 -3.828125,-17.625 -9.78125,-23.671875 -=
6.0625,-6.15625 -14.359375,-9.890625 -23.59375,-9.890625 -9.140625,0 -17.51=
5625,3.734375 -23.484375,9.890625 C 5.78125,-50.25 1.953125,-41.859375 1.95=
3125,-32.625 z"
           id=3D"path54"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-11"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 27.5,-0.84375 -25.359375,-64.3125 -1.578125,0 26.1875,66.=
1875 1.59375,0 26.1875,-66.1875 -1.578125,0 z"
           id=3D"path57"
           inkscape:connector-curvature=3D"0" />
      </symbol>
      <symbol
         overflow=3D"visible"
         id=3D"glyph2-12"
         style=3D"overflow:visible">
        <path
           style=3D"stroke:none"
           d=3D"m 5.875,-31.875 33.75,0 0,-1.5 -33.75,0 0,-30.390625 34.484=
375,0 0,-1.390625 -35.984375,0 0,65.15625 36.171875,0 0,-1.390625 -34.67187=
5,0 z"
           id=3D"path60"
           inkscape:connector-curvature=3D"0" />
      </symbol>
    </g>
    <clipPath
       clipPathUnits=3D"userSpaceOnUse"
       id=3D"clipPath3094">
      <rect
         style=3D"fill:#0000ff;fill-rule:evenodd;stroke:#000000;stroke-widt=
h:0.80000001px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
         id=3D"rect3096"
         width=3D"754.1781"
         height=3D"300.61642"
         x=3D"13.184932"
         y=3D"8.90411" />
    </clipPath>
  </defs>
  <g
     id=3D"surface1"
     clip-path=3D"url(#clipPath3094)"
     transform=3D"matrix(0.30563256,0,0,0.25971391,2.2768141,14.142563)">
    <g
       style=3D"fill:#000000;fill-opacity:1"
       id=3D"g63">
      <use
         xlink:href=3D"#glyph0-1"
         x=3D"348.2168"
         y=3D"301.89426"
         id=3D"use65"
         width=3D"770"
         height=3D"415" />
    </g>
    <g
       style=3D"fill:#000000;fill-opacity:1"
       id=3D"g67">
      <use
         xlink:href=3D"#glyph1-1"
         x=3D"529.64868"
         y=3D"301.89426"
         id=3D"use69"
         width=3D"770"
         height=3D"415" />
    </g>
    <g
       style=3D"fill:#000000;fill-opacity:1"
       id=3D"g71">
      <use
         xlink:href=3D"#glyph1-2"
         x=3D"6.1280389"
         y=3D"301.89426"
         id=3D"use73"
         width=3D"770"
         height=3D"415" />
    </g>
    <path
       style=3D"fill:none;stroke:#000000;stroke-width:2;stroke-linecap:butt=
;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1"
       d=3D"m 493.91343,343.0006 35.08676,83.49946 34.99987,-83.49946"
       transform=3D"matrix(3.192199,0,0,3.192199,-1250.002,-1067.559)"
       id=3D"path75"
       inkscape:connector-curvature=3D"0" />
    <path
       style=3D"fill:none;stroke:#000000;stroke-width:2;stroke-linecap:butt=
;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1"
       d=3D"m 511.0585,384.99996 35.69493,0"
       transform=3D"matrix(3.192199,0,0,3.192199,-1250.002,-1067.559)"
       id=3D"path77"
       inkscape:connector-curvature=3D"0" />
    <g
       style=3D"fill:#000000;fill-opacity:1"
       id=3D"g79">
      <use
         xlink:href=3D"#glyph2-1"
         x=3D"26.006697"
         y=3D"388.08368"
         id=3D"use81"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-2"
         x=3D"74.570259"
         y=3D"388.08368"
         id=3D"use83"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-3"
         x=3D"127.04873"
         y=3D"388.08368"
         id=3D"use85"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-4"
         x=3D"170.01956"
         y=3D"388.08368"
         id=3D"use87"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-5"
         x=3D"241.79297"
         y=3D"388.08368"
         id=3D"use89"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-3"
         x=3D"291.10223"
         y=3D"388.08368"
         id=3D"use91"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-6"
         x=3D"334.07306"
         y=3D"388.08368"
         id=3D"use93"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-7"
         x=3D"399.97409"
         y=3D"388.08368"
         id=3D"use95"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-8"
         x=3D"432.78479"
         y=3D"388.08368"
         id=3D"use97"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-9"
         x=3D"481.34836"
         y=3D"388.08368"
         id=3D"use99"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-10"
         x=3D"530.47119"
         y=3D"388.08368"
         id=3D"use101"
         width=3D"770"
         height=3D"415" />
    </g>
    <g
       style=3D"fill:#000000;fill-opacity:1"
       id=3D"g103">
      <use
         xlink:href=3D"#glyph2-11"
         x=3D"599.16858"
         y=3D"388.08368"
         id=3D"use105"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-12"
         x=3D"654.16376"
         y=3D"388.08368"
         id=3D"use107"
         width=3D"770"
         height=3D"415" />
      <use
         xlink:href=3D"#glyph2-9"
         x=3D"697.13458"
         y=3D"388.08368"
         id=3D"use109"
         width=3D"770"
         height=3D"415" />
    </g>
  </g>
</svg>=0A
------MultipartBoundary--6K2ta7t8nN97FZAwmeib6FvTx5LqQEUrVinMOLZFBt------
