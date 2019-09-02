Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1B8A5363
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 11:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XJlgtscnmatSID5VEZq1PrbBGxKTB6l6J9V61ZOzLM=; b=M4KNix3uQdsx9O
	iJ7XHSepywGCeNDlK0/R94Cdrt7Pqkn0tqldSbaRsSIBAjHVL4h+2/O1O8Vpu7TRADYPto2JczvCP
	djMkYRcUvTg82Nnhoidso6QfSj65+w//Bdstcp4d8YCBoHKrr/TPR8u1NGX3wzmg9Aj81WaMjLsPA
	qEtd+HwMEBtUNT3Zcn1ZCJ7Gf9Ks2gN6p97U+LBxCtPnMSwU4wvNv2K/55H2YRwj0C1iUwuUilKpo
	CJg7NJ9ihplu3kBubXqy4+NnOMCf2RDQ9UZYCtR0M083uZX4oQJ7SprgMxvT3JFwbyNeDodKHY+mq
	ClizkbkA/5h74tpaoMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iyS-0001im-0O; Mon, 02 Sep 2019 09:50:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iyK-00016z-AI
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 09:50:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id u16so13352298wrr.0
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 02:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=z/iNfh9lERKCL4WNCXIHABmMvr8yzyMTtcia6mN52EQ=;
 b=F3ev0/94Lp7tRgH5QkOB7GchzXuzea7zDMr/QPIscw1kwGvE47q6u3+dDwu3Iu12WC
 gbNy68B9TnB61ZUYtjULImN4UGYq4IsfRXjBdyRPJDKodTe+woG/43DGOEka+gy4L8Ks
 y+zQf9aCd9hE9KlB2Vhl70ew//mw+HIjbwA5bjVMM4hV7ZAAE3u8eKUA/DpLqdDmsnWy
 LVs1P90/kjUlAnPerYhSn30AYhNIrcJCd0W0+X7eMOV/bANxa67nRPY7BHFSFjUVVMt2
 VihWvo4ntzvGsFSkTSkWXyxvgRnWflTJTq5QU80FbvrbeeWj1rJBHCB2PgMaYT0oGZa/
 Lv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=z/iNfh9lERKCL4WNCXIHABmMvr8yzyMTtcia6mN52EQ=;
 b=lBZFPXhmCtsikeQ8L4YBomSnc2POVbW4szh87uSt+0nFadC3eKJS3DjzJqUr9ogrgX
 aNKKi9LxNMH95qZDAf1DD4GbkOsQmH38Cw6tJzPDcu9pZ7/kT93Gz/DTDWT142lsykDY
 CAmJfGuFZYmhVbL/mtT6C9Sh4t11vO43qYU+e4bjBSITBAHA+3BKOuT98ZHBZbHQn5Xe
 fNdugv4vYfMJ+FTr5854Fsqo99w04/d7IE4juzvXbUW9BhPELlZQvtj7tSOAAKvkwgEP
 x4oapfVmx6GgL9nYbo8Hpvoo16DtGJMzIM2QyMxJFI2nbFJ2zvZD6WWcdR6gdfqLCyJt
 Q/RA==
X-Gm-Message-State: APjAAAUGabuqdz2X7uSMSc46g/RQkd2XaBaW3cxaqmHNU+/GvS8syosP
 /013LOrP+hf6rRWDGbFY2s/upg==
X-Google-Smtp-Source: APXvYqzKfwhjRcpSww0X5JvjADuGYoZnJVDaisET7pRsBYvpYFMr7Bmpd+NM8IppVRkyGVrVHrE3rQ==
X-Received: by 2002:a5d:4f05:: with SMTP id c5mr31271928wru.349.1567417803097; 
 Mon, 02 Sep 2019 02:50:03 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id y3sm28567157wmg.2.2019.09.02.02.50.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:50:02 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:50:01 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 10/13] mfd: mt6323: add mt6323 rtc+pwrc
Message-ID: <20190902095001.GV32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-11-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-11-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_025005_004645_823F74AA 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIGVudHJ5IGZvciBydGMg
YW5kIHBvd2VyLWNvbnRyb2xsZXIgdG8gbXQ2MzIzCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zZWYg
RnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV3Vu
ZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gQWNrZWQtZm9yLU1GRC1ieTogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiBjaGFuZ2VzIHNpbmNlIHY1OiBu
b25lCj4gY2hhbmdlcyBzaW5jZSB2NDogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjM6IG5vbmUKPiBj
aGFuZ2VzIHNpbmNlIHYyOiBvbmx5IHNwbGl0dGluZywgc2Vjb25kIHBhcnQgb2YgdjIgcGFydCA0
Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMgfCAyNSArKysrKysrKysrKysrKysr
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCgpBcHBsaWVkLCB0
aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmlj
YWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
Rm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
