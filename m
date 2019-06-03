Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D946832D01
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 11:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPCPODr+1QIf7zx8nc9r3QgSkZtMUPzlStBVHWLsSzU=; b=TrN6VlgINqLRrr
	uWUnK3qZc8+Im+ued4dk0TWfe+EPz8pJSR4gcs9vivTx5sILu5pgqJKeDMceFT1PlZQDv4JNdnM/z
	xYFogBS5w7P7RLijEA9MMK9ZqV/poT3GZ4ITcW1sbN8fVNgxhY8/gKUJ5VtMVVL2xgeWpbfylB1jq
	VdLsdlpR+Q7WpbEvJpZs/qKbPCDj3MSuBpbtXPtW3os3vR9uF1WO3rMBR6ADC3GKLiqgXZR1iXSFz
	z4z6fRoLU2liMkTwVxn7GzbuTu5AXzaVyyNch+dCXr/1y0e1JdBbveeXtsphTSsPTfkiu1I+y1W5N
	NLacEQk8Jq+O0uKfVA2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjPO-0004da-E2; Mon, 03 Jun 2019 09:37:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjP9-0004KK-4T
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 09:37:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id v22so10279758wml.1
 for <linux-mediatek@lists.infradead.org>; Mon, 03 Jun 2019 02:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=FH8JY4qDdnuY/nkK+8zanlK0WEZXZ9PGux3V1jYWA74=;
 b=u7hHGQ1KPja0igPZ1tQ98KrQncJ3i/kWVJBQMj5wioahCD2F6NNSGXVa6KEe8UAz6Z
 gJQqqSLxLtpuqyJ2//fNfZAl2IPP8Up+FNSoAuOYYbGydJFZwu5Qn7tMmyYEy3PSlDUZ
 SgaP+9CWWIPqZcI+0kXQVzcMv/t0BLomvbmfKtvGE+XdkcY5gQbGk0JxbHH7fUGHaGsq
 UTPwzOBeLs08FKCm/+UhAA7NtHJare8rDbWaYyBpdLvLtmB0NVCj6oyc4I1xWtXXxMtD
 bJtM77uyXBGUbwBE2XKsZAHUssodxR2VHgiE9zICnhQyzLcc84TyZs7gWcmCp/Cbg9TL
 uo8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=FH8JY4qDdnuY/nkK+8zanlK0WEZXZ9PGux3V1jYWA74=;
 b=ttYtJuZ/To71GDldBgvvzWlIgV8j9fuQzHVtBTlKJ9ZF34RLG6AdymDwWB3e1fdMdP
 WxqQfaxm4sVo0xIU8ol300M8dbXggB0JayOkvdOrWj82SyRwguYLOaArOGw7ZrUMKnXU
 3aMuqkOX/pzYWSkhxwuESyexImPUyBSBSb96mGnF9Q30eKInc2DL7mgmejU6EAZR5+Dh
 1Si54gqL3YpSO85iJZ4FbkwzBHuwud0BxA/FVX1MZE42nj4qAfnNBf8eDQPwYW8oZWR1
 otpIpArZqT0kgcfe2RBL563e+ecudKdxjQ1SEpeQ8NUWjqzwQJaEydaPMN4MIHJIqgCn
 lBPQ==
X-Gm-Message-State: APjAAAWmJCM+NOBcrYI8qaqHaggnhrpupLqR1DdaYW5ULmeS5ebBsHn/
 V6FwYn6FiygJ6k8Gt343HN1/SQ==
X-Google-Smtp-Source: APXvYqygOO4Xq5aGTdEvmHkgjQC2ck/mOA4BrLfs9cgwsIQoR6QldAKRhoLObHom678jS81nbgIypA==
X-Received: by 2002:a1c:5546:: with SMTP id j67mr1759767wmb.80.1559554641286; 
 Mon, 03 Jun 2019 02:37:21 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id b17sm6309777wmj.26.2019.06.03.02.37.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 02:37:20 -0700 (PDT)
Date: Mon, 3 Jun 2019 10:37:19 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: mfd: mt6397: Add bindings for MT6392
 PMIC
Message-ID: <20190603093719.GK4797@dell>
References: <20190515131741.17294-1-fparent@baylibre.com>
 <20190515131741.17294-4-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515131741.17294-4-fparent@baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_023723_388955_C4C9B538 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gV2VkLCAxNSBNYXkgMjAxOSwgRmFiaWVuIFBhcmVudCB3cm90ZToKCj4gQWRkIHRoZSBjdXJy
ZW50bHkgc3VwcG9ydGVkIGJpbmRpbmdzIGZvciB0aGUgTVQ2MzkyIFBNSUMuCj4gCj4gU2lnbmVk
LW9mZi1ieTogRmFiaWVuIFBhcmVudCA8ZnBhcmVudEBiYXlsaWJyZS5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gCj4gVjM6Cj4gCSogTm8g
Y2hhbmdlCj4gCj4gVjI6Cj4gCSogTmV3IHBhdGNoCj4gCj4gLS0tCj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbXQ2Mzk3LnR4dCB8IDEyICsrKysrKysrKystLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCkZvciBteSBv
d24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxp
bmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNo
bmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGlu
ZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
