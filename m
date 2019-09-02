Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07B8A594B
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 16:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0f+jDQhJ9HLGnqY20uQ4hvU/kxPKoD/DdcpX2Y+h2Q=; b=E2ZBoRTsPwxV2A
	yP52WqmE6qIofEiTJ+MxdtA1QrzcjspmZyVdAxA3AQpZU9I/HYr/cd3Od4mZv5r91X6FinSR6fYt+
	LgOOiU6N9nSoK/cUsI7vkMPOvnRa0g86xXhCZNjeaTAncd2WaWlYcVuCxHZHIAvP839ZT8AukuTC3
	rXSOdlriU/gbQXH6gcGJi4YK4/SJVinRFQczvxHof7Y9wGeEkb42uJfhMbIisIoESwV0V3WywunHm
	OYQMLxq3wQiigGpY+XL4jLj19Mk1QvAMcsKos9DUqz8oKdMsI2S2TquqEAUYraNhbbzWUEgqcwY3U
	JP7SR9+iXF0fjoNeaHmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nI5-0001aH-Nt; Mon, 02 Sep 2019 14:26:45 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nI2-0001Zq-P7; Mon, 02 Sep 2019 14:26:44 +0000
Received: by mail-wr1-f67.google.com with SMTP id q12so14195051wrj.12;
 Mon, 02 Sep 2019 07:26:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ot30V47/iBS0yHDmKdi6h92CwtoqCpzSIGyUdC23LBs=;
 b=qJVYsIHAMwRGnUhFarPXC69pkig+22F8BH0ZFB7ZSRS9PLDQgZAvPTf+nztAueUt0/
 k1RB0WIsk3Tg1G7Nn0yn/uOPcWACGFHnk8C/dU5tbrLeWtYtwZmAMNaf2X4oiGWhd260
 N5ALOLrQYTATlCCw7BwXchie6yThMDf7DyD5Eo425aGG9IGub7ak9chD3jFVgId/unco
 QExyrZ8a+xeUgXYk4nt3H7g3Yfu3mvokcOpa/S0k8ipKUMYOBRXRsHGQvtkHSGiw7ryt
 x1wSrySmi/mGWPTJpBOXR6TcBILDTql8kyypcP0Di99tOSDWD/gOTg15LATzNA5p22Bk
 wdTw==
X-Gm-Message-State: APjAAAVSIYQ4zTxtZvT4RxqAi0wckispl7g6F8K9+tPZL+CS090tLEUm
 ppVPZodozu1RVRNphsURHA==
X-Google-Smtp-Source: APXvYqwrcoUbjAf10BUlLBhioq2RZCRuSUEHDKWeG20TWt9K0tZHjtvEfqHEbFfZ7g0NKNH+PmgRKg==
X-Received: by 2002:a5d:6811:: with SMTP id w17mr1391676wru.181.1567434400948; 
 Mon, 02 Sep 2019 07:26:40 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id h125sm33788405wmf.31.2019.09.02.07.26.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 07:26:40 -0700 (PDT)
Date: Mon, 2 Sep 2019 15:26:39 +0100
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v1 2/2] of: Let of_for_each_phandle fallback to
 non-negative cell_count
Message-ID: <20190902142639.GA13947@bogus>
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_072642_815798_17B90CFA 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 kernel@pengutronix.de, Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 03:28:46PM +0200, Uwe Kleine-K=F6nig wrote:
> Referencing device tree nodes from a property allows to pass arguments.
> This is for example used for referencing gpios. This looks as follows:
> =

> 	gpio_ctrl: gpio-controller {
> 		#gpio-cells =3D <2>
> 		...
> 	}
> =

> 	someothernode {
> 		gpios =3D <&gpio_ctrl 5 0 &gpio_ctrl 3 0>;
> 		...
> 	}
> =

> To know the number of arguments this must be either fixed, or the
> referenced node is checked for a $cells_name (here: "#gpio-cells")
> property and with this information the start of the second reference can
> be determined.
> =

> Currently regulators are referenced with no additional arguments. To
> allow some optional arguments without having to change all referenced
> nodes this change introduces a way to specify a default cell_count. So
> when a phandle is parsed we check for the $cells_name property and use
> it as before if present. If it is not present we fall back to
> cells_count if non-negative and only fail if cells_count is smaller than
> zero.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/base.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)

Looks fine to me. I can apply with an ack from the iommu folks on patch =

1.

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
