Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6761C8C63
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 15:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eS4SvIamYbdxOjhJcSeE7UjD6oDPiyHvPVyRIoTzq2w=; b=ehmZQ78FN6k8hy
	Ag4kGPpnP7Z3kqMggCxkmTXZE/sdLz280QoMrLq0u2Btkc3E6NAPyYPngPy1owugiVfxdJd8Fs/Fj
	PebJg53db0c4HG5jtSuYIwcWLC3CLtJAdBoqAdRgngmLZ9EzPo7JsoXSohWYSfwWA84+9QOFe57ou
	WNy3nmezf0Gtod+xD06SsMNmIbvv+QFwSjtZwh3yLMOugZY+h1mVVap6wZBFETlDdxCt+Gcc1PMzv
	93LVz5fZeiVoecx83skItzdQxIBznGEnMc65DzgyGNRwA7gQm0+VQGd55ChWnA92ZJC7OUYWyPPat
	rYM0qNZc9BWx0DsdOEXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgbo-00072n-VO; Thu, 07 May 2020 13:30:40 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgbk-00071S-ST
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 13:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zb4OpWd+ftUutlhzLBoCMZ1ZsGveFX/7q4nn3tXpAB4=; b=cOAl9+BHW+wR/670v7sfjMJykg
 wh2NVNTq6lape7tozmqzwDr/BxgrhOuvoVla/sfNhQ9alKSjzRrGxNsKRp6Yy+s0AYL5k/L415wkD
 YTeScQNmUFo3bprXljqm+tpPLf747UKO57OhF0j1ED2Ltwjz+5mZtFr16BDr0FcXs/5w=;
Received: from p54ae9310.dip0.t-ipconnect.de ([84.174.147.16] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1jWgbZ-0005E5-5G; Thu, 07 May 2020 15:30:31 +0200
Subject: Re: [PATCH] mt76: fix different licenses in same driver
To: Ryder Lee <ryder.lee@mediatek.com>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
References: <3a5cb822eb4cd81d32b5480f1235c992ea4fbe06.1587193872.git.ryder.lee@mediatek.com>
From: Felix Fietkau <nbd@nbd.name>
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 xsDiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwc0cRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPsJgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQzsFNBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabwkkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <d32134a6-9673-521f-22ee-871aa2284af0@nbd.name>
Date: Thu, 7 May 2020 15:30:24 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <3a5cb822eb4cd81d32b5480f1235c992ea4fbe06.1587193872.git.ryder.lee@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_063037_289270_C3B9B777 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stanislaw Gruszka <sgruszka@redhat.com>, Jakub Kicinski <kubakici@wp.pl>,
 Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Ryder,

I think for this patch we need an explicit ACK from Stanislaw Gruszka
and Jakub Kicinski (both Cc'd), because mt76x0 was licensed under GPL.

- Felix

On 2020-04-18 09:28, Ryder Lee wrote:
> Avoid using different licenses in the same driver.
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
>  drivers/net/wireless/mediatek/mt76/Kconfig               | 2 +-
>  drivers/net/wireless/mediatek/mt76/Makefile              | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7603/Kconfig        | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7603/Makefile       | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7615/Kconfig        | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c     | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7615/usb_mcu.c      | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig        | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/Makefile       | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c       | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.h       | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/init.c         | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h     | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/main.c         | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/mcu.h          | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/mt76x0.h       | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/phy.c          | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/phy.h          | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x0/usb.c          | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig        | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt76x2/Makefile       | 2 +-
>  22 files changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/net/wireless/mediatek/mt76/Kconfig b/drivers/net/wireless/mediatek/mt76/Kconfig
> index cbc2d8a5d354..6e522bfca20a 100644
> --- a/drivers/net/wireless/mediatek/mt76/Kconfig
> +++ b/drivers/net/wireless/mediatek/mt76/Kconfig
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  config MT76_CORE
>  	tristate
>  
> diff --git a/drivers/net/wireless/mediatek/mt76/Makefile b/drivers/net/wireless/mediatek/mt76/Makefile
> index a1dfafec431b..32238349ec81 100644
> --- a/drivers/net/wireless/mediatek/mt76/Makefile
> +++ b/drivers/net/wireless/mediatek/mt76/Makefile
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  obj-$(CONFIG_MT76_CORE) += mt76.o
>  obj-$(CONFIG_MT76_USB) += mt76-usb.o
>  obj-$(CONFIG_MT76x02_LIB) += mt76x02-lib.o
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
> index 6a0080f1d91c..8bf53244472c 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
> +++ b/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  config MT7603E
>  	tristate "MediaTek MT7603E (PCIe) and MT76x8 WLAN support"
>  	select MT76_CORE
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/Makefile b/drivers/net/wireless/mediatek/mt76/mt7603/Makefile
> index 6878e305c24d..0e5539fa4ef2 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7603/Makefile
> +++ b/drivers/net/wireless/mediatek/mt76/mt7603/Makefile
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  obj-$(CONFIG_MT7603E) += mt7603e.o
>  
>  mt7603e-y := \
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
> index e25db1135eda..d84548d5e000 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  
>  config MT7615_COMMON
>  	tristate
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c b/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c
> index 39642065531f..747f4b61e6da 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: ISC
>  /* Copyright (C) 2019 MediaTek Inc.
>   *
>   * Author: Felix Fietkau <nbd@nbd.name>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/usb_mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/usb_mcu.c
> index cd709fd617db..36c47500eb5b 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/usb_mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/usb_mcu.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: ISC
>  /* Copyright (C) 2019 MediaTek Inc.
>   *
>   * Author: Felix Fietkau <nbd@nbd.name>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig b/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
> index 7c88ed8b8f1e..408ebe6e67a8 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  config MT76x0_COMMON
>  	tristate
>  	select MT76x02_LIB
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/Makefile b/drivers/net/wireless/mediatek/mt76/mt76x0/Makefile
> index 8dcfb4cb4fdf..d6388e63c46e 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/Makefile
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/Makefile
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  obj-$(CONFIG_MT76x0U) += mt76x0u.o
>  obj-$(CONFIG_MT76x0E) += mt76x0e.o
>  obj-$(CONFIG_MT76x0_COMMON) += mt76x0-common.o
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c
> index 9087607b621e..ff70d30eebaa 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2014 Felix Fietkau <nbd@openwrt.org>
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.h b/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.h
> index 15540ce8db87..c9ddb47101ec 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2014 Felix Fietkau <nbd@openwrt.org>
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/init.c b/drivers/net/wireless/mediatek/mt76/mt76x0/init.c
> index 57f8d56737eb..76c9ba4c3b00 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/init.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/init.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-License-Identifier: ISC
>  /*
>   * (c) Copyright 2002-2010, Ralink Technology, Inc.
>   * Copyright (C) 2014 Felix Fietkau <nbd@openwrt.org>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h b/drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h
> index 3dcd9620a126..fef58c4589c1 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/initvals.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * (c) Copyright 2002-2010, Ralink Technology, Inc.
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h b/drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h
> index 42a79887bf79..93f82c320468 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/initvals_phy.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * (c) Copyright 2002-2010, Ralink Technology, Inc.
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/main.c b/drivers/net/wireless/mediatek/mt76/mt76x0/main.c
> index 700ae9c12f1d..8243033dcb98 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/main.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/main.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2014 Felix Fietkau <nbd@openwrt.org>
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/mcu.h b/drivers/net/wireless/mediatek/mt76/mt76x0/mcu.h
> index 0ef29f15f866..706158b504e9 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/mcu.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/mcu.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2014 Felix Fietkau <nbd@openwrt.org>
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/mt76x0.h b/drivers/net/wireless/mediatek/mt76/mt76x0/mt76x0.h
> index 6953f253a28a..c5eae232a031 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/mt76x0.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/mt76x0.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2014 Felix Fietkau <nbd@openwrt.org>
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c b/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c
> index 09f34deb6ba1..aa2e48c7a605 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/phy.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-License-Identifier: ISC
>  /*
>   * (c) Copyright 2002-2010, Ralink Technology, Inc.
>   * Copyright (C) 2014 Felix Fietkau <nbd@openwrt.org>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/phy.h b/drivers/net/wireless/mediatek/mt76/mt76x0/phy.h
> index 441d6559d4fd..fcedde763779 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/phy.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/phy.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * (c) Copyright 2002-2010, Ralink Technology, Inc.
>   * Copyright (C) 2018 Stanislaw Gruszka <stf_xl@wp.pl>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/usb.c b/drivers/net/wireless/mediatek/mt76/mt76x0/usb.c
> index 5535b9c0632f..e844b34d3f74 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/usb.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/usb.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2015 Jakub Kicinski <kubakici@wp.pl>
>   */
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig b/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig
> index 5fd4973e32df..0b6f9fcc3c54 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  config MT76x2_COMMON
>  	tristate
>  	select MT76x02_LIB
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/Makefile b/drivers/net/wireless/mediatek/mt76/mt76x2/Makefile
> index caf089538c11..893d872d6196 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/Makefile
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/Makefile
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: ISC
>  obj-$(CONFIG_MT76x2_COMMON) += mt76x2-common.o
>  obj-$(CONFIG_MT76x2E) += mt76x2e.o
>  obj-$(CONFIG_MT76x2U) += mt76x2u.o
> 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
