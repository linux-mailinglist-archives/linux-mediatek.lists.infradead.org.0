Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E100E9ADDA
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 13:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oKUrgWgOUMibYcuBwRZaIsAg9i8tqoSn4O1REwWQYy8=; b=NdhRj3ChPoWIBv
	vxpqufNgYxTxB/8emf6jLLosC2zmbuhnIaXNeshKyojcqAVaQsqntCSZCamsgYaR61IW6vox4gDdk
	fK1ombJ7Z+2sm4EyS7P2rqaV82ZxthhiVLOIuaT6UXXr+YauuC3OYGSY8+D3CdXKrWeMVswfZfJbn
	EThxQB+i+KizujIFpq6T8dAZx0k6RKd+xmao/MIFCHZ1d51ycgHKt/W6b9Ls1asz/OrBYr5N+H4Ri
	bE1VhHe5C/WH/cW4OjyLaV5U0+TFpfF8N+BobkX8B+MI496RdTdgvjYU8ZfyfXduYeRu4KVfc3ggl
	dq/iztV0uY9zjQK9VAUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17QC-000691-Dr; Fri, 23 Aug 2019 11:07:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17Q9-00068Q-Ml
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 11:07:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id v16so6809083lfg.11
 for <linux-mediatek@lists.infradead.org>; Fri, 23 Aug 2019 04:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZHcoLOCEDvNdiKJSIaGU9TMbH+mXTX9zteaN4YnDK00=;
 b=cPSKEtJOjYq9WsIijVXnZyKIbicP5PMiaPAcAAyh8mxF2fDAkuuFN3FcjHGy6xOiA8
 dg3q+8r842lRJFe52waZ1pWOP1wKwsDLDgKLqIpRczfz3K1GCezlxU2eAw9eIZbMKxrf
 mrn4ekEkBMNN05Alm52osCbJSaG9T3p08S1uk/Etvu7P/iU5q1BQZIwSb0LvUTNiRtvb
 cYFDDf3S1vHAgguA6kMPY4lnFgRTA7hrkOSRgVLfAkUQYbXFTy9PUohmSf4W+STJYWLK
 3ZPZzlh8ATubZ3jKVG+Q0Xc8NiATpTsN2VCfjDHzuS4R6vwvK+BZ87tC4ou5Z6faQS3u
 BXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZHcoLOCEDvNdiKJSIaGU9TMbH+mXTX9zteaN4YnDK00=;
 b=bvxI+WqUZyWN7gx4/qgn8vBITaRc47/eHPoYgm323t9vJhVydjvEqddYtKekUmimR1
 PqlqU7BYVPJ2cytlP81aPRhHrudYnZAfZC2BWHcn8BHYbtbkjqwvR577p1/WiwjyVi6q
 nd8qE4jlFJ3TYqAFxTecj+Ec6DSqZR+ASfsrktgrUTCV1qo/I3+hhhEZG7My2pgHkvRs
 aqYbGPEcqsZL9bs6ALQaShK0IM9x9cZ1jEvPOzFWC5WNzDCXDMRLg4kfgrf1fQbMKH0D
 lPogXMkFHzUyIJIlsmggqPiLJycEdtgDfTFYHDWLMn5tIkEOeZvX2u9E860agJxzdHoa
 gfOA==
X-Gm-Message-State: APjAAAUE+fYTJc5Sv9LZLVo96cKXgat09Lhjpa00iAZtDgH44JpSNaYl
 wafCI8BSqBo/SvDFI5mkoeOt5A==
X-Google-Smtp-Source: APXvYqzi3fwiyJBZWIDhJNnGDLtbqn6NPY5vwE/i10iohempQV8GMBpKT39wg3/8zN79Mnf6fd6bZA==
X-Received: by 2002:a19:2314:: with SMTP id j20mr1185222lfj.22.1566558471447; 
 Fri, 23 Aug 2019 04:07:51 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id r23sm596312ljm.59.2019.08.23.04.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 04:07:50 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: ck.hu@mediatek.com, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch, matthias.bgg@gmail.com
Subject: [PATCH] drm/mediatek: fix implicit function declaration
Date: Fri, 23 Aug 2019 13:07:36 +0200
Message-Id: <20190823110736.26117-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_040753_769152_08F961B2 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Anders Roxell <anders.roxell@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

V2hlbiBidWlsZGluZyBtdGtfZHJtX2Rydi5vIHRoZSBmb2xsb3dpbmcgYnVpbGQgZXJyb3IgaXMg
c2VlbjoKCi4uL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jOiBJbiBmdW5j
dGlvbiDigJhtdGtfZHJtX2ttc19pbml04oCZOgouLi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RybV9kcnYuYzoyOTE6ODogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mCiBmdW5j
dGlvbiDigJhkbWFfc2V0X21heF9zZWdfc2l6ZeKAmTsgZGlkIHlvdSBtZWFuIOKAmGRybV9yZWN0
X2FkanVzdF9zaXpl4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0K
ICByZXQgPSBkbWFfc2V0X21heF9zZWdfc2l6ZShkbWFfZGV2LCAodW5zaWduZWQgaW50KURNQV9C
SVRfTUFTSygzMikpOwogICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+CiAgICAgICAgZHJtX3Jl
Y3RfYWRqdXN0X3NpemUKLi4vZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmM6
MjkxOjUyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YKIGZ1bmN0aW9uIOKAmERNQV9C
SVRfTUFTS+KAmTsgZGlkIHlvdSBtZWFuIOKAmEJJVF9NQVNL4oCZPyBbLVdlcnJvcj1pbXBsaWNp
dC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICByZXQgPSBkbWFfc2V0X21heF9zZWdfc2l6ZShkbWFf
ZGV2LCAodW5zaWduZWQgaW50KURNQV9CSVRfTUFTSygzMikpOwogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+CiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCSVRfTUFTSwoKUmV3b3Jr
IHRvIGFkZCBhIG1pc3NpbmcgaW5jbHVkZSBmaWxlICdsaW51eC9kbWEtbWFwcGluZy5oJywgYmVj
YXVzZSB0aGF0CmlzIHRoZSAob25seSkgaGVhZGVyIGZpbGUgY29udGFpbmluZyB0aGF0IGRlY2xh
cmF0aW9uLgoKRml4ZXM6IDA3MDk1NTU1OGU4MiAoImRybS9tZWRpYXRlazogc2V0IERNQSBtYXgg
c2VnbWVudCBzaXplIikKU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVs
bEBsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5j
IHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2Rydi5jCmluZGV4IDU0NTM2MTc2YmNiYi4uMzUyYjgxYTdhNjcwIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYwpAQCAtMTAsNiArMTAsNyBAQAogI2lu
Y2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KICNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5o
PgogI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KKyNpbmNsdWRlIDxsaW51eC9kbWEtbWFw
cGluZy5oPgogCiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KICNpbmNsdWRlIDxkcm0vZHJt
X2F0b21pY19oZWxwZXIuaD4KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
