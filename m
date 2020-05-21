Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4499C1DCD51
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 14:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T09+pA7+jNW0bh6beRR/JYesohRB/sWFiIgtPfbh+7I=; b=g97AA40Br1DHy5
	zxFNuBA/AB5nGal9t9VtWGF3GCAnFQsy4U5gaMVNn5wybFyefL95zOUS6ao0GuSK3Mg5Yp7LWGP5K
	R29nttGeYyaVmQ5CAxRfTWs6Riq+d/tto5ZUpQ/ILcxj3dKIXERvEenKqWltylBpymL06IcqzS4Cc
	fuq4USMQGu3q5TtwWqgmF0AqOrXgcLf91eEeNwPmTMaX8KTKWHDveS2tD3hNh6LKfkuqFDQpdn3FC
	yQft+2S7fMOE5UbTaue18ycRO9IIaTn68GlBMZsNm7XnpQJEh0bcwgbzjQlZl1SJat3VJMqY34dEA
	fRNW1jaX/ujCR4w42g8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkgp-0002El-7E; Thu, 21 May 2020 12:52:47 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkgc-00025l-8r; Thu, 21 May 2020 12:52:35 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LCqQBM073519;
 Thu, 21 May 2020 07:52:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590065547;
 bh=HhdS0k1uvFyYcnFyKdAE7u2FGKBzACV32jA6ddp5U90=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=B6AX0BmewPmUOKJI5DJ3cIZn+mQtSxDXO9Avzp912H0DIeRRFYLdBCq5F1P0K/PX7
 ZBFr4KNidcljuogeJKGXNVIzLhPqoT8rUaNRB9jQktX4F+5LUYW8hpz+7HKo+ea875
 9xBCwVXNAZY05h0iL5muyCMfD/8jR9tAittuvtXQ=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04LCqQkD089935
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 07:52:26 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 07:52:26 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 07:52:26 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LCqPlK071033;
 Thu, 21 May 2020 07:52:26 -0500
Date: Thu, 21 May 2020 18:22:25 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v5 05/19] mtd: spi-nor: add support for DTR protocol
Message-ID: <20200521125225.odxcdjkoy5lckrbx@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
 <20200519142642.24131-6-p.yadav@ti.com>
 <OF6C754784.29BF11CD-ON4825856F.0032D83F-4825856F.0033A4F1@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF6C754784.29BF11CD-ON4825856F.0032D83F-4825856F.0033A4F1@mxic.com.tw>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_055234_431777_E895E230 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On 21/05/20 05:24PM, masonccyang@mxic.com.tw wrote:
> 
> Hi Pratyush,
> 
> 
> > @@ -311,6 +313,7 @@ struct flash_info {
> >                  * BP3 is bit 6 of status register.
> >                  * Must be used with SPI_NOR_4BIT_BP.
> >                  */
> > +#define SPI_NOR_OCTAL_DTR_READ   BIT(19) /* Flash supports octal DTR 
> Read. */
> 
> #define SPI_NOR_OCTAL_DTR_RDWR  BIT(19) /* Support Octal DTR Read & Write 
> */

This flag only enables SNOR_HWCAPS_READ_8_8_8_DTR. It does not affect 
SNOR_HWCAPS_PP_8_8_8_DTR. So it shouldn't be called RDWR.
 
> more precisely and clearly ?
> 
> thanks,
> Mason
> 

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
