Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA0721592
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 May 2019 10:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FiEpT1zGsKhDtlQ8TODQARa4Eai3CEpkfQ5XIPZyj8=; b=kYS8fgMWwX3XSI
	nWpCnv4gTPzNvUTlcgXnsj7H0kTkNFKo2YKoLBrifenx+jB6Hx7usoLlq8g8nqNGsZeNzSegixbvl
	TYPlw0unIzy85dWpJykdsKuxkuTtb/Kn8OodvnrrVxN1B6M2MLmYrQLccIYm8yZsfdI9jgb6BexLP
	rGHb5yQ0FdlOfgA0PxV1eGv1k9CYEl+Jk1/80wxiIAltjQwFr+7z5IhB6SWKAFx853KuhNxCgJviH
	Qn9L3rJvBtCv5vTGRdKy/04sPad4Aq/IbqGYB/XEOz3sxKwmo3byEz8NrF5kK34V41nHTWMvotfrb
	rXb4IQpW4DwROVDmoy4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYV8-0001Qk-Fm; Fri, 17 May 2019 08:46:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYV3-0001Pk-SB
 for linux-mediatek@lists.infradead.org; Fri, 17 May 2019 08:46:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id l2so6178606wrb.9
 for <linux-mediatek@lists.infradead.org>; Fri, 17 May 2019 01:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=zANvFWcmKo8EuxHsHKy0+A0TL7ZrRo4zFgliyPjUUj4=;
 b=G89E42Pa8/i0yLqFzDrR7voEnExiA0bj6nxX/4R5r20F5lboYP6d80VB+yt+uns+cU
 CLh2KVwNUMjJb6+O8Y93sHBY/NUt++OAt1tQ/3SDeNABXCdBOafrfibAkCOB3L+feT2m
 s8KKjZzoi+CZ3QwFklDFwfqL5xNo4+o+laL2vGQMvFhfjpOpDpH/nYqr7zoFiWsDa+wF
 eDvewynCTMPVD2dTSK+2OE91AyC87rburN6cEoGRymtk4UVzaG5SUtZU/qTII1JxVCcO
 KybayTKa8Vw6kkWVbJAPaHWf/bzv2rVzxFntNfCUMdPh8jfM3u2rwPh3bOb1tqB2Uf0v
 rEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=zANvFWcmKo8EuxHsHKy0+A0TL7ZrRo4zFgliyPjUUj4=;
 b=B6+UZr0dzGfPcCrOXO16f64ybdOlQkmkwkjmPPtkE5ICgetgGIKJCMIzEjBd771yn6
 DMB5iA/ltP4yBX8NjVfHEM8ooBeOSs+7GqdtLS9NE9QLVDScSnIfkx4XBubF8o0sx2PY
 pLWn4VZwA7hO/IxochopaMMh6umIFQOiqVdLuN4j6DvflC9ldauasPKdWyrvp/64kq03
 tybxrUYQrJSJ023adNM9Dz92GuqMtOy676xzdKoXusPekFsJGEJc7djBdyiCKT35zsxU
 0VlqWLiDSOs6F7pDUrfoQSgrJVYWR8D9JeyuIB/VlrH+KPgZzHqHCVsz1//kt/V07aOX
 OyfA==
X-Gm-Message-State: APjAAAUz6xLpApRJgBlkak0RHf20X+M1OK6fNvaLaa99YzEC2EbFn7Gx
 wL7HXZWIwrAXapCat5JmMlk26Q==
X-Google-Smtp-Source: APXvYqwBWa7+jkAlmZTk18op83oeFtloTczIxdn6drxP9ta4epZYJ52bFHtjfdYK8jPP5UQwHeCBig==
X-Received: by 2002:adf:ec42:: with SMTP id w2mr32445004wrn.77.1558082756357; 
 Fri, 17 May 2019 01:45:56 -0700 (PDT)
Received: from localhost ([2620:10d:c092:180::1:fcd4])
 by smtp.gmail.com with ESMTPSA id v17sm5528287wmc.30.2019.05.17.01.45.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 01:45:55 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Robin Murphy <robin.murphy@arm.com>, Johan Hovold <johan@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v2] gnss: get serial speed from subdrivers
In-Reply-To: <69b5e90c-c1c3-9f2e-57a8-64741182a96e@arm.com>
References: <1558024626-19395-1-git-send-email-lollivier@baylibre.com>
 <69b5e90c-c1c3-9f2e-57a8-64741182a96e@arm.com>
Date: Fri, 17 May 2019 10:45:53 +0200
Message-ID: <86y33579ku.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_014557_964225_B32978F2 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baylibre-upstreaming@groups.io, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Colin Ian King <colin.king@canonical.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu 16 May 2019 at 19:02, Robin Murphy <robin.murphy@arm.com> wrote:

>> -/*
>> - * FIXME: need to provide subdriver defaults or separate dt parsing from
>> - * allocation.
>> - */
>>   static int gnss_serial_parse_dt(struct serdev_device *serdev)
>>   {
>>   	struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
>>   	struct device_node *node = serdev->dev.of_node;
>> -	u32 speed = 4800;
>> +	u32 speed;
>>   
>> -	of_property_read_u32(node, "current-speed", &speed);
>> +	of_property_read_u32(node, "default-speed", &speed);
>>   
>>   	gserial->speed = speed;
>
> Hmm, maybe it's a bit too convoluted for the compiler to warn about, but 
> if a "default-speed" property is not present, gserial->speed will now be 
> assigned an uninitialised value. I don't know what the intent is neither 
> the driver nor the DT provides a value, but you'll either need to bring 
> back the fallback initialisation above or propagate errors from 
> of_property_read_u32().
>
> Robin.
>

Robin,
Good point, thank you for your review. I'll think about it and see about
a fallback scenario.
I would be in favour of propagating the error because default values are
very dependent on the hardware in use.

Best,

Loys

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
