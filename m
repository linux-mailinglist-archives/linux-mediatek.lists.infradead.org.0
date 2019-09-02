Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA9EA5356
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 11:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/0IgETdpXFfPkLGuEElf1ekRUT7IDq+GOZRZOUJH8M=; b=t8d5qaFWaX3zij
	fMDCZJa72s/5uzg1JBlLEqul/tGGgrI7Z8Jwrwg+DEcPp/EyndBeNaWQIJzoi6y4FzAmT3jySsw4W
	HdocjgWS6IRw84JYgLUYnwykoP/p8JWIV5xbilfniK0nBWSInLvkWIydODLCK7/IMiUP0Q35pnkod
	IF767yxZ2kKrpqOhys8Q07O7U822hIc61EJryw8dWOaH/UgohQyE7weuMi3K1gk4Os7GaKvVPVbyX
	evOtcb0Lcdyfvq+BM0bU+mL7lOOGgHEOhKIkZzgSe3ePXIKX4LfHaX51Y+cQKA8KA+Y58vhs73ia+
	ITjdFLZMhVMRC7JpJnLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ixm-0000VM-VF; Mon, 02 Sep 2019 09:49:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ixW-0000JO-Hw
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 09:49:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id g207so9834172wmg.5
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 02:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=XaAC2UGpsh6Rl+xXtvt/zZ4Jj3WqlV6FbUQcE8k/OFE=;
 b=Fcsdc6RsuDuPiLa9pJ8ykgClftxCpIfBC4pIswB4N3NPQ/dju7ZCK2iNiSXswtyj/X
 onUbd2EYdbmi/UWWCD7zjcsDPMiG5XTAZG76ZhDiq630WGO0CJ8ctok2U9T1ws4CnIU0
 cd3LpxfkhDnVpdEAWCsJdlssixcxlRXmQZ1SgJxhMvp6UL07wzmdGcltI4n1yoGAaKlG
 tiqXclivUmF51+g3TukhyPU3JUJgXZGsqRjz3I/oPR6umzQZhomRnzIifIH0Wg2XqCkm
 5/WO/rUvC8XJPuBpPPRUeI8swzV5ri0OYmpkoQCaKoLzDV61bygBpJmLoi9eMqsfA+qB
 2q5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=XaAC2UGpsh6Rl+xXtvt/zZ4Jj3WqlV6FbUQcE8k/OFE=;
 b=sPy1kpHQ2sFTZVWlu7JN2L5rsYh/hIWQWO8sawJZ8ENJlOWKANq9ft6EubyBPA77CN
 tL/yO4YBAmKqNd5+yiDSjxqlaLLg/oEQdaQCINe8buBT0aYJOyDEuKRKiHAbQC9grUux
 rHjLhg0Zu+dDD8WhdPiiW+pdSSAcyhm2vKPhor0ORkUcdq2hX/C33Eh5Ouv9OqmbR+pT
 sFzinNaDSzqsa4VuvM46e7ktGSAAsg/9i6XE3NW5s/EYVkBEfBrygpExil+5CNVcxkZ+
 07HGyc0Htt2oa5rsCzJR9SCfWKiEnJ29MkWnVJjjwRXH7zLGXzuNUDsZQ+JcPBZPAKvx
 84TA==
X-Gm-Message-State: APjAAAWw1SNHvSoAm7HjAVbDoiRaB86QKhZEfxSKGizQXix4vXEj6ykn
 ui7ekwEH8kZsyHUj03q/iAjjqQ==
X-Google-Smtp-Source: APXvYqyAb3NYJI26X7MqFVxjVL23b6sr38r91MjidNGuAZG0y8cjvNgpZZPuH9ZCIogojja2cubR/w==
X-Received: by 2002:a7b:cf37:: with SMTP id m23mr7434346wmg.53.1567417753357; 
 Mon, 02 Sep 2019 02:49:13 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id n12sm19426057wmc.24.2019.09.02.02.49.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:49:12 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:49:11 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 06/13] mfd: mt6397: add mutex include
Message-ID: <20190902094911.GT32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-7-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-7-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024914_913499_CA0A5BBE 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIG1pc3NpbmcgbXV0ZXgu
aAoKSW4gZnV0dXJlLCBwbGVhc2UgdXNlIGNvcnJlY3QgRW5nbGlzaCBncmFtbWFyIGluIGNvbW1p
dCBtZXNzYWdlcy4KCkkgd2lsbCBmaXggdGhlbSBmb3IgdGhpcyBzdWJtaXNzaW9uLgoKPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3NlZiBGcmllZGwgPGpvc2VmLmZyaWVkbEBzcGVlZC5hdD4KPiBTaWduZWQt
b2ZmLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiAtLS0K
PiBjaGFuZ2VzIHNpbmNlIHY1OiBzZXBhcmF0ZWQgZnJvbSAicG93ZXI6IHJlc2V0OiBhZGQgZHJp
dmVyIGZvciBtdDYzMjMgcG93ZXJvZmYiCj4gLS0tCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM5
Ny9jb3JlLmggfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCkFwcGxp
ZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
