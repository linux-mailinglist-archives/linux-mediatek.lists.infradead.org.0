Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1085789B5A
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 12:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMWQAiyCPW9FUHOBSvlIgZmke3aIErGFQU9VMJvT3Tc=; b=J28HfqNu47o8Qh
	E5VEbB+IM8gYFXFhFjtVzPQ513uop7kws2PvPVBM5YQLppPsOIeoo3AQJA5zL9MiOCFWWR9Lo1gCk
	n9oz+klGycJOSNd1fxiSLGJmnJNK4jpaIco8iWVks819dC6aj3NaJWF2ei244ykR5S5I5UIM9M73+
	0ZaMzlq8At5O38wJeoFmfNOXaYZ8rI68Z2k8wIHqaz1VYRDIgFQuKoAAxug2G925h8UjC/6AYtS0M
	bevzE45h4nWZMtTdqi4LNAatqPSCzxRV+m6txCTR4G8s2jWkOH0ILj3Q66sgf1U6dzKwxdEKIM178
	ySdA1GwTXsALwaKt2GBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7TO-0004sK-D2; Mon, 12 Aug 2019 10:22:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7TL-0004rd-Fh
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 10:22:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so11639885wml.0
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 03:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5m2IUZRROGymOefDRF7neqY5caAFmV8hI7w+ygmONvA=;
 b=VbvHp5gq3ZfIv129Gw/NtZ87lFa2bGMn4EuR83iecdeL2Csep9DpwQiL7+zz5JqjFK
 X8bIxV0RuZYkwYNxNlQfaKfvyhdfMRe+fsByZ+5/9Q4URPmHiuFfC+v/g4Na72n/MRMw
 r5gWKC5znHtVRRq1Mdy7xb3V/NfaocaWCQA7G19e1ZfLLTVKay0EAG6Eyp0ykdSV+4+H
 m8IfxciiLoaWNeDAQlVb35jDEAHgnVhlwiGdrJnKqaWswW3Ci+r549m18+lM5cv/jCuF
 1hFxRPVjIE+R+CsJoPvG28LQ6WUzne3g9QFS7qHahxLXO0k9kPM/IiwVA3zxzlc5GxvS
 W5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5m2IUZRROGymOefDRF7neqY5caAFmV8hI7w+ygmONvA=;
 b=obWjVNLNXq73nMLjWX03GwTcHDHwmDxnr24gDTiBgveZ16GH9zwu3UdczkCk/cWdfA
 Lhj+MSVE3sPRmAkx7MW0Hu03Qp6ZgvzU1j4oYtW3rFd+6rG5LjYrxdeNIeEnP+P9236t
 58DD5RnFkUbj5T6FufV4g09XFcPbQlxi9InD7wY+j2/eiLVBcK+00UJDFVkxxCLdWkMW
 Yq9UzwP1w0nqnN2Sqz5xt8Ikk8tQQc9F887njvFNiEWg21nDN+AeM8kS0ORwbjieojwT
 CgQiPOIoSPzKIiZVhCNmAKaOAFeCW83/RmrhiMvaG1wv12Jj4MsXsBx8PG+a5xzAy6wM
 HdZQ==
X-Gm-Message-State: APjAAAXBTq2+dPZZowkXZ8aeOL2JfmzBzP+LEFwDW9UJ8gEalhkKxzWb
 BkxblFMXK1N7lc59SjclZxrdcg==
X-Google-Smtp-Source: APXvYqybIDxE+3tj5T831ZEq1FImfdGr3gRRq6UGg2lHX1HJoq0eScbIUxcvMhMextMyi7Sx8dZgKQ==
X-Received: by 2002:a1c:6a0b:: with SMTP id f11mr19124477wmc.87.1565605358267; 
 Mon, 12 Aug 2019 03:22:38 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id g26sm1478821wmh.32.2019.08.12.03.22.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:22:37 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:22:35 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v3 07/10] mfd: mt6323: add mt6323 rtc+pwrc
Message-ID: <20190812102235.GJ26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-8-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729174154.4335-8-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032239_520603_13B7A8EB 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAyOSBKdWwgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIGVudHJ5IGZvciBydGMg
YW5kIHBvd2VyLWNvbnRyb2xsZXIgdG8gbXQ2MzIzCj4gCj4gY2hhbmdlcyBzaW5jZSB2Mjogb25s
eSBzcGxpdHRpbmcsIHNlY29uZCBwYXJ0IG9mIHYyIHBhcnQgNAo+IAo+IFNpZ25lZC1vZmYtYnk6
IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+IFNpZ25lZC1vZmYtYnk6IEZy
YW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IC0tLQo+ICBkcml2ZXJz
L21mZC9tdDYzOTctY29yZS5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQoKRm9yIG15IG93biByZWZlcmVuY2U6CiAgQWNr
ZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBG
YWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0
ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
