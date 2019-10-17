Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DEEDA675
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 09:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=so3FC9riyQ+uP9WsOzVa3ROPFNHB7cmZqalsVUUshgA=; b=X2tnhhDTXSoVuf
	ArTDpH47tshnthU1vNZj6x+2t9pctYzGXG3C6n4OHKNBT+VCnhLqszbAmcJdJWTv8HDa48GorPqvr
	hhCFuPieBKmDjsnqC1nv+0pxN/6aPSqg2T5pAIZaALNAjetkZsAN8XLmU0cRt/9nwsd3pD2/bsHGV
	oFoP1A8lBwQCWwOXmMyfbVbvEWvLbIqK1wi7LtG+H03WIKD4ujgT1V5UfG042a+sYUQdZP9gEnhrq
	K8Fb8p/iHi88ewE/b49Y5R/dPsDIOVwjRulw7VMHIM5ibsTg4EOFCFcA6j5KpyXBI5Ld8QjL8gJZh
	HQHnODNwVRh7NMctrklQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0Dc-0000Xk-BV; Thu, 17 Oct 2019 07:29:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0DM-0000Ll-M4
 for linux-mediatek@lists.infradead.org; Thu, 17 Oct 2019 07:28:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id j18so1044593wrq.10
 for <linux-mediatek@lists.infradead.org>; Thu, 17 Oct 2019 00:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=lF+fgIZSn/XvW94K1ywke5vKThCmmdz9k3RaVW32JlY=;
 b=xWq5Hkde3q45K4PbAUMZnkHurefRtmRtgiCvKkBapdsqHhyI8Ee7NQgVyP0caZIy8i
 SkmQ1egZd2Ipk6BGM4y6AVJW9nvC+Xn8N8JdeokHXHBrBw4QK+COO33atNrzxg5d5lav
 nShDhgKGvxrmhHC9vz8BbXNWLBmsygaC5TapuRj9Lr9nwSYxpai6/9KlgrpXoTYA5lqH
 OEvuPup2lrG4cV2HbEGs8pg6Rhl7OlfjgoiMTd8ia7/O0zkZLEgPWYTKYVTKHGVrScGl
 6AeR9WuzrW03UrS+S7023opAzP3oRUr//UNnL+2NOnOuZLLH1pcxvM7LRDRO/YGJw6dG
 +Iqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=lF+fgIZSn/XvW94K1ywke5vKThCmmdz9k3RaVW32JlY=;
 b=ULi1IA8eUMfDH6JDwiEZeMOoBIFygPKaMLwFuxRfG1rsPVzyCo/nW/rmUwEvz9e4HE
 rvWtX77rIBY+gDaifUePkdq3VCMI/wtYcgm9KiyAj2+IBT2qB2xpaFwYwZ+4rxxsoFsj
 TwxtOhRFdOvOIrxyUmKiVvNtoOngzf0Nn7Kfjva7d9irrQcnC+03KJHKzm5z+ifi6X8p
 F7afWh+Hw9sd+jsH35J4WfkHzJv3IR7NNHvlK9/BjqiZ6JWXbk9jRXMeLEC8MqzpOS1X
 6b862bKIueZU99kwvmneZ7LiYm/7+G88ofOBByYDQDYxorttcBlS2zjoVo7tnVkTZLDA
 fycA==
X-Gm-Message-State: APjAAAWeplwfVJxAtepyzbLgdVDro1WCOuEzHD8EuCVhf67r+B+Pyjak
 gAG/iYmZoEERlxj4PiO+uNU6XA==
X-Google-Smtp-Source: APXvYqxLpxoVGENRd1K1D0H43oFwhZes7gObxyyPv4AuhrB11kRaylbvgtEsJSg5Sud7bDf5lrdTVg==
X-Received: by 2002:a5d:6709:: with SMTP id o9mr1655680wru.116.1571297331032; 
 Thu, 17 Oct 2019 00:28:51 -0700 (PDT)
Received: from dell ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id r140sm1610799wme.47.2019.10.17.00.28.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 00:28:50 -0700 (PDT)
Date: Thu, 17 Oct 2019 08:28:49 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [PATCH 2/4] mfd: Add for PMIC MT6359 registers definition
Message-ID: <20191017072849.GL4365@dell>
References: <1571218786-15073-1-git-send-email-Wen.Su@mediatek.com>
 <1571218786-15073-3-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571218786-15073-3-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_002852_726976_E17D6EFC 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gV2VkLCAxNiBPY3QgMjAxOSwgV2VuIFN1IHdyb3RlOgoKPiBGcm9tOiAid2VuLnN1IiA8d2Vu
LnN1QG1lZGlhdGVrLmNvbT4KClNob3VsZCBiZToKCiAgRnJvbTogV2VuIFN1IDx3ZW4uc3VAbWVk
aWF0ZWsuY29tPgoKPiBUaGlzIGFkZHMgTWVkaWFUZWsgUE1JQyBNVDYzNTkgcmVnaXN0ZXJzIGRl
ZmluaXRpb24gZm9yIHRoZQo+IGZvbGxvd2luZyBzdWIgbW9kdWxlczoKPiAKPiAtIFJlZ3VsYXRv
cgo+IC0gUlRDCj4gLSBJbnRlcnJ1cHQKPiAKPiBTaWduZWQtb2ZmLWJ5OiB3ZW4uc3UgPHdlbi5z
dUBtZWRpYXRlay5jb20+CgpTYW1lIGhlcmUuICBQbGVhc2UgY2hhbmdlIHlvdXIgR2l0IGNvbmZp
Zy4KCj4gLS0tCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM1OS9yZWdpc3RlcnMuaCB8IDUzMSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTMx
IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210
NjM1OS9yZWdpc3RlcnMuaAoKT25jZSB5b3UndmUgZml4ZWQgdGhlIGFib3ZlLCBwbGVhc2UgYWRk
IG15OgoKRm9yIG15IG93biByZWZlcmVuY2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVz
IDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJv
IFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1t
ZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVr
Cg==
