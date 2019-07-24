Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7917250D
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 05:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pr+ekeIkEcx9IkuOx0yN3wH5NK1BrM9yX5tCun8CpMw=; b=DBZsPI6oHGmvYD
	UmQ7IRtcmJkdCjW6WQhuBsIy6mEEOfZhR93MuDU1W+k/AsDUuaOcrDIyG2qSL5fkAahCJQGAcEfmH
	a+9urgiyEp9bVNXJitH+rnViwhX0nQAxnH0VrRZNc/sCsPoiIRVM1t0PlnoStnQ9OhkP8vMZYz4Jo
	imQ1cglC0u7qJoBdY0Glzitj6WH9z8p/JkrqGX0t8iHaYUqm8NTkGRqU55JKgV8tAnRruJsllYEul
	0fzDzoEYDnDHXwtzvt6g6nSr4J3B5qhiOdf5mCxQD7yYtISv8k40HALG4xMH09bk/NQVKQOH43v+L
	W5WBweId0fCKI8HkatHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq7a3-0001V8-Mo; Wed, 24 Jul 2019 03:04:39 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq7Zv-0001UF-Qa
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 03:04:37 +0000
Received: by mail-oi1-x243.google.com with SMTP id g7so33934727oia.8
 for <linux-mediatek@lists.infradead.org>; Tue, 23 Jul 2019 20:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SADKtokwNjPsVxdbHYiNYp3Qcp6LVuknSames6Hppwg=;
 b=E2Yp+gtWklAYbGwyROt0GcrMaMwX7uGZMCFHZ1xEMMX/vF5WHA2dB573o4W+xAwxma
 n5sYj/TyMkHJ8f7J1YSkTdkCuw+rPCNkgp1/PdpKmzwDc/1ntrxzk6PL9muLuvEEWbj6
 Dxn9fTiUedcMfImv2mMc1rAayK2Pu2pFhxHYkCssaMa6uvnfxTcoi/kkKo011eWAZhNc
 sCQA3SiRjNyowSm6rdQoKwRuWkOzd7Kkwh/+SkNoy32NWVcq96zp5rb1tYIeYMgyw4no
 Zgj9MEZcBFeu/I8NJhIYyI01roJuokc0TG77IlLNMfFfGlfarwfepxmOmpYbvfSkKJbX
 NxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SADKtokwNjPsVxdbHYiNYp3Qcp6LVuknSames6Hppwg=;
 b=PqcQ36ZmOBVMqWfsce10G3iZN/2rqWhfTs5leYPlY7ISZcHGAL9QtquDNpbyitDciH
 5rpI+S3grNvW0HMEbscFwhM5icCgbcgprBBjloVsTUMp2iflwMGik900WiIlyYLM6UTO
 ZVsAJgGWGdEGncIHvFPPdNO9oKOEdJpvMjarqvgD8rziaHXVfcu0oKlNknLAuYCHD7nj
 eY1j+0cLFp/xQC7qFYCgfZaDw2aTxVABLGc/SRaZH/PR1JHmMdeOiR0Umb2B0uIa/3Jy
 /cE1HM17kekngmqhU6yER5rWZck+I8+GVcuALc5A2Et15b7c7r6JRZRy4pHKnAFWyFcP
 8J0w==
X-Gm-Message-State: APjAAAWrbx9ZGvBjLBJn/2yUF5et5iaKN4y3uLiBKyqxs4wZADRWKdhw
 WMo3r1qzzGzlMk2nl2kIOQA7ElOnXye6JWR21jm6ng==
X-Google-Smtp-Source: APXvYqzvs1ALB1LKYzLTbJpGcZVnWRhhHpaRn/lcG0Clhvcxi96bldTwomrnpaGhf9e8NPzN4iSHfiznqla3m+IYliw=
X-Received: by 2002:a05:6808:3c5:: with SMTP id
 o5mr38524493oie.102.1563937468571; 
 Tue, 23 Jul 2019 20:04:28 -0700 (PDT)
MIME-Version: 1.0
References: <6f6d5cf551a0b0d0dd1b902aca2c5417b7f98da7.1563864007.git.ryder.lee@mediatek.com>
In-Reply-To: <6f6d5cf551a0b0d0dd1b902aca2c5417b7f98da7.1563864007.git.ryder.lee@mediatek.com>
From: Roy Luo <royluo@google.com>
Date: Wed, 24 Jul 2019 11:03:51 +0800
Message-ID: <CA+zupgyq9VZkstdOOX4E_G9KWVN2WB+u0XnLiFAbxGws6Mt4qA@mail.gmail.com>
Subject: Re: [PATCH] mt76: switch to SPDX tag instead of verbose boilerplate
 text
To: Ryder Lee <ryder.lee@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_200431_966764_E3DF6A7D 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Ryder,

Please follow the convention, some of your header files use //.

C source: // SPDX-License-Identifier: <SPDX License Expression>
C header: /* SPDX-License-Identifier: <SPDX License Expression> */

Regards,
Cheng-Hao (Roy) Luo

On Tue, Jul 23, 2019 at 2:45 PM Ryder Lee <ryder.lee@mediatek.com> wrote:
>
> Add SPDX identifiers to all remaining files in mt76/
>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
>  drivers/net/wireless/mediatek/mt76/agg-rx.c         | 13 +------------
>  drivers/net/wireless/mediatek/mt76/debugfs.c        | 13 +------------
>  drivers/net/wireless/mediatek/mt76/dma.c            | 13 +------------
>  drivers/net/wireless/mediatek/mt76/dma.h            | 13 +------------
>  drivers/net/wireless/mediatek/mt76/eeprom.c         | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mac80211.c       | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mcu.c            | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mmio.c           | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76.h           | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x0/pci.c     | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x0/pci_mcu.c | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02.h        | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c | 13 +------------
>  .../net/wireless/mediatek/mt76/mt76x02_debugfs.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_dfs.h    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_dma.h    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.c | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.h | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_mac.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_mac.h    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_mcu.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_mcu.h    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_mmio.c   | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_phy.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_phy.h    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_regs.h   | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_trace.c  | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_trace.h  | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c   | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_usb.h    | 13 +------------
>  .../net/wireless/mediatek/mt76/mt76x02_usb_core.c   | 13 +------------
>  .../net/wireless/mediatek/mt76/mt76x02_usb_mcu.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x02_util.c   | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c  | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.h  | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/init.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/mac.c     | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/mac.h     | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c     | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/mcu.h     | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2.h  | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2u.h | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/pci.c     | 13 +------------
>  .../net/wireless/mediatek/mt76/mt76x2/pci_init.c    | 13 +------------
>  .../net/wireless/mediatek/mt76/mt76x2/pci_main.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/phy.c     | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/usb.c     | 13 +------------
>  .../net/wireless/mediatek/mt76/mt76x2/usb_init.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c | 13 +------------
>  .../net/wireless/mediatek/mt76/mt76x2/usb_main.c    | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c | 13 +------------
>  drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c | 13 +------------
>  drivers/net/wireless/mediatek/mt76/trace.c          | 13 +------------
>  drivers/net/wireless/mediatek/mt76/trace.h          | 13 +------------
>  drivers/net/wireless/mediatek/mt76/tx.c             | 13 +------------
>  drivers/net/wireless/mediatek/mt76/usb.c            | 13 +------------
>  drivers/net/wireless/mediatek/mt76/usb_trace.c      | 13 +------------
>  drivers/net/wireless/mediatek/mt76/usb_trace.h      | 13 +------------
>  drivers/net/wireless/mediatek/mt76/util.c           | 13 +------------
>  63 files changed, 63 insertions(+), 756 deletions(-)
>
> diff --git a/drivers/net/wireless/mediatek/mt76/agg-rx.c b/drivers/net/wireless/mediatek/mt76/agg-rx.c
> index 4d33efdb3555..fa4ab17df210 100644
> --- a/drivers/net/wireless/mediatek/mt76/agg-rx.c
> +++ b/drivers/net/wireless/mediatek/mt76/agg-rx.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>  #include "mt76.h"
>
> diff --git a/drivers/net/wireless/mediatek/mt76/debugfs.c b/drivers/net/wireless/mediatek/mt76/debugfs.c
> index c6a9fe2aef9d..d95b73fd0d2b 100644
> --- a/drivers/net/wireless/mediatek/mt76/debugfs.c
> +++ b/drivers/net/wireless/mediatek/mt76/debugfs.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>  #include "mt76.h"
>
> diff --git a/drivers/net/wireless/mediatek/mt76/dma.c b/drivers/net/wireless/mediatek/mt76/dma.c
> index bb223faa740f..46f5223b4d89 100644
> --- a/drivers/net/wireless/mediatek/mt76/dma.c
> +++ b/drivers/net/wireless/mediatek/mt76/dma.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/dma-mapping.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/dma.h b/drivers/net/wireless/mediatek/mt76/dma.h
> index 03dd2bafa4e8..54f94104fda1 100644
> --- a/drivers/net/wireless/mediatek/mt76/dma.h
> +++ b/drivers/net/wireless/mediatek/mt76/dma.h
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>  #ifndef __MT76_DMA_H
>  #define __MT76_DMA_H
> diff --git a/drivers/net/wireless/mediatek/mt76/eeprom.c b/drivers/net/wireless/mediatek/mt76/eeprom.c
> index b7a49ae6b327..804224e81103 100644
> --- a/drivers/net/wireless/mediatek/mt76/eeprom.c
> +++ b/drivers/net/wireless/mediatek/mt76/eeprom.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>  #include <linux/of.h>
>  #include <linux/of_net.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mac80211.c b/drivers/net/wireless/mediatek/mt76/mac80211.c
> index 20b8c0f9048e..d1075e13ecf7 100644
> --- a/drivers/net/wireless/mediatek/mt76/mac80211.c
> +++ b/drivers/net/wireless/mediatek/mt76/mac80211.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>  #include <linux/of.h>
>  #include "mt76.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mcu.c b/drivers/net/wireless/mediatek/mt76/mcu.c
> index dbb57b593a87..2a976688804d 100644
> --- a/drivers/net/wireless/mediatek/mt76/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mcu.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2019 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mmio.c b/drivers/net/wireless/mediatek/mt76/mmio.c
> index 83c96a47914f..e996bd551475 100644
> --- a/drivers/net/wireless/mediatek/mt76/mmio.c
> +++ b/drivers/net/wireless/mediatek/mt76/mmio.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
> index 376c944704c1..9e6061015131 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c b/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c
> index 4585e1b756c2..b2ff1fd20162 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/pci_mcu.c b/drivers/net/wireless/mediatek/mt76/mt76x0/pci_mcu.c
> index 490c1869f2c4..038187b390ce 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/pci_mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/pci_mcu.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>  #include <linux/kernel.h>
>  #include <linux/firmware.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c b/drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c
> index 4a282761ca58..888a930a5e08 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x0/usb_mcu.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>  #include <linux/kernel.h>
>  #include <linux/firmware.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02.h b/drivers/net/wireless/mediatek/mt76/mt76x02.h
> index 7fa0c9eab164..35cf92a0d775 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02.h
> @@ -1,18 +1,7 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Stanislaw Gruszka <stf_xl@wp.pl>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x02_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c b/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c
> index f8847fbd0ade..12ee1e796cb8 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_beacon.c
> @@ -1,19 +1,8 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
>   * Copyright (C) 2018 Stanislaw Gruszka <stf_xl@wp.pl>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x02.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_debugfs.c b/drivers/net/wireless/mediatek/mt76/mt76x02_debugfs.c
> index 1b1e424ccbb2..0cb2a7b35fe5 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_debugfs.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_debugfs.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/debugfs.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c b/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c
> index 50e9b310e496..5dec33ed8527 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x02.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.h b/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.h
> index 0408613b45a4..491010a32247 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_dfs.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x02_DFS_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_dma.h b/drivers/net/wireless/mediatek/mt76/mt76x02_dma.h
> index 6394010a565f..4aff4f8e87b6 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_dma.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_dma.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x02_DMA_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.c b/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.c
> index 07f0496d828a..c54c50fd639a 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <asm/unaligned.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.h b/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.h
> index 0ba536de3d6e..99941a4700f3 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_eeprom.h
> @@ -1,18 +1,7 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x02_EEPROM_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_mac.c b/drivers/net/wireless/mediatek/mt76/mt76x02_mac.c
> index a3917d0a5120..abacb4ea7179 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_mac.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_mac.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Stanislaw Gruszka <stf_xl@wp.pl>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x02.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_mac.h b/drivers/net/wireless/mediatek/mt76/mt76x02_mac.h
> index cb39da79527a..e2bf741937e7 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_mac.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_mac.h
> @@ -1,18 +1,7 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Stanislaw Gruszka <stf_xl@wp.pl>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76X02_MAC_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.c b/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.c
> index c1fd28dc9244..4be7a24097cc 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.h b/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.h
> index a7b0d3e5df1d..c81a9655c4c9 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_mcu.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x02_MCU_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_mmio.c b/drivers/net/wireless/mediatek/mt76/mt76x02_mmio.c
> index 8bf93684febf..dc773070481d 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_mmio.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_mmio.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_phy.c b/drivers/net/wireless/mediatek/mt76/mt76x02_phy.c
> index b86a33b2a16d..d7334267b530 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_phy.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_phy.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_phy.h b/drivers/net/wireless/mediatek/mt76/mt76x02_phy.h
> index d2971db06f13..fc2e41006a0d 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_phy.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_phy.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x02_PHY_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_regs.h b/drivers/net/wireless/mediatek/mt76/mt76x02_regs.h
> index b2868ae79290..21c0f351fa09 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_regs.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_regs.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76X02_REGS_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_trace.c b/drivers/net/wireless/mediatek/mt76/mt76x02_trace.c
> index 5b42d2c87937..a812c3a1e258 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_trace.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_trace.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_trace.h b/drivers/net/wireless/mediatek/mt76/mt76x02_trace.h
> index ae884f539f3f..61ecaf0fe065 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_trace.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_trace.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #if !defined(__MT76x02_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c b/drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c
> index 04118f08debc..f27aade34c1e 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_txrx.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_usb.h b/drivers/net/wireless/mediatek/mt76/mt76x02_usb.h
> index 7b53f9e57f29..98329debc033 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_usb.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_usb.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x02_USB_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c b/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c
> index e4332d5a5757..78dfc1e7f27b 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x02_usb.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c b/drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c
> index 0cb8751321a1..a993cd7e9948 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_util.c b/drivers/net/wireless/mediatek/mt76/mt76x02_util.c
> index e84006cd6f9a..2a5695ab3b88 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x02_util.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x02_util.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Stanislaw Gruszka <stf_xl@wp.pl>
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c
> index f17058346ff1..9f91556c7f38 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.h b/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.h
> index 9e735524d367..4dcf6518cb0d 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x2_EEPROM_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/init.c b/drivers/net/wireless/mediatek/mt76/mt76x2/init.c
> index 97c3543eed8a..79e583eb066b 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/init.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/init.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x2.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/mac.c b/drivers/net/wireless/mediatek/mt76/mt76x2/mac.c
> index e99d4c9bd428..e08740ca3d0c 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/mac.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/mac.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x2.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/mac.h b/drivers/net/wireless/mediatek/mt76/mt76x2/mac.h
> index 42ff221d7706..a1583021e1e9 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/mac.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/mac.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x2_MAC_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c b/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c
> index cd3e082f486c..76d8cd37d4de 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.h b/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.h
> index 75f1b2acb141..41fd66563e82 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x2_MCU_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2.h b/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2.h
> index d7abe3d73bad..41680c420cda 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x2_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2u.h b/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2u.h
> index 76cb1f84eff5..c876bac43751 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2u.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2u.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #ifndef __MT76x2U_H
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/pci.c b/drivers/net/wireless/mediatek/mt76/mt76x2/pci.c
> index e84d5c5911ea..73c3104f8858 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/pci.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/pci.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c
> index b8f657517f37..343127f2d621 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/delay.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_main.c b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_main.c
> index 3a1467326f4d..3921d965a106 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_main.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_main.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x2.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c
> index e38715c1bcad..ca6f968411ac 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_mcu.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c
> index 2edf1bd0c18c..23f35bf8d47b 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/delay.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/phy.c b/drivers/net/wireless/mediatek/mt76/mt76x2/phy.c
> index 57212b049ee2..e4c6313b563a 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/phy.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/phy.c
> @@ -1,18 +1,7 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x2.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/usb.c b/drivers/net/wireless/mediatek/mt76/mt76x2/usb.c
> index 7a994a783510..0b76341738a6 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/usb.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/usb.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c
> index 94f52f98019b..2910068f4e79 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/delay.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c
> index 3b82345756ea..e7fea3a6f1fd 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mac.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x2u.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c
> index e4dfc3bea3c5..6b4c94101fb8 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x2u.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c
> index 152d41fe9ff5..dd22d8af0901 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_mcu.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/firmware.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c
> index dfd54f9b0e97..b1381f9df992 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76x2u.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/trace.c b/drivers/net/wireless/mediatek/mt76/trace.c
> index ea4ab8729ae4..ed3df3c8b4b3 100644
> --- a/drivers/net/wireless/mediatek/mt76/trace.c
> +++ b/drivers/net/wireless/mediatek/mt76/trace.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/trace.h b/drivers/net/wireless/mediatek/mt76/trace.h
> index 06fc21a43a1f..0b3e635da868 100644
> --- a/drivers/net/wireless/mediatek/mt76/trace.h
> +++ b/drivers/net/wireless/mediatek/mt76/trace.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #if !defined(__MT76_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
> diff --git a/drivers/net/wireless/mediatek/mt76/tx.c b/drivers/net/wireless/mediatek/mt76/tx.c
> index 3b73f3b3f576..fb86ad956478 100644
> --- a/drivers/net/wireless/mediatek/mt76/tx.c
> +++ b/drivers/net/wireless/mediatek/mt76/tx.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include "mt76.h"
> diff --git a/drivers/net/wireless/mediatek/mt76/usb.c b/drivers/net/wireless/mediatek/mt76/usb.c
> index 76fed459ae58..e0fc86ffe685 100644
> --- a/drivers/net/wireless/mediatek/mt76/usb.c
> +++ b/drivers/net/wireless/mediatek/mt76/usb.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/usb_trace.c b/drivers/net/wireless/mediatek/mt76/usb_trace.c
> index 7e1f540f0b7a..9942bdd6177b 100644
> --- a/drivers/net/wireless/mediatek/mt76/usb_trace.c
> +++ b/drivers/net/wireless/mediatek/mt76/usb_trace.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/net/wireless/mediatek/mt76/usb_trace.h b/drivers/net/wireless/mediatek/mt76/usb_trace.h
> index 518ad1a26e21..f5ab3215af80 100644
> --- a/drivers/net/wireless/mediatek/mt76/usb_trace.h
> +++ b/drivers/net/wireless/mediatek/mt76/usb_trace.h
> @@ -1,17 +1,6 @@
> +/* SPDX-License-Identifier: ISC */
>  /*
>   * Copyright (C) 2018 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #if !defined(__MT76_USB_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
> diff --git a/drivers/net/wireless/mediatek/mt76/util.c b/drivers/net/wireless/mediatek/mt76/util.c
> index 69270c1a9091..23d1e1da78b2 100644
> --- a/drivers/net/wireless/mediatek/mt76/util.c
> +++ b/drivers/net/wireless/mediatek/mt76/util.c
> @@ -1,17 +1,6 @@
> +// SPDX-License-Identifier: ISC
>  /*
>   * Copyright (C) 2016 Felix Fietkau <nbd@nbd.name>
> - *
> - * Permission to use, copy, modify, and/or distribute this software for any
> - * purpose with or without fee is hereby granted, provided that the above
> - * copyright notice and this permission notice appear in all copies.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> - * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> - * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> - * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> - * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> - * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> - * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
>   */
>
>  #include <linux/module.h>
> --
> 2.18.0
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
