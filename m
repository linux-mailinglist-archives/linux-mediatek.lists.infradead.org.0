Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF38D03CD
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 01:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OGZ9UM0C3f2cDnqNiBEaLLeX9R6KMueWhsnFzlR/No=; b=Kbck1tpqnVfygf
	exZWqLrZBfMMAN0FLMdb9uuQiT+9tzmYFzu4pme3lbfiACGGcq5gdsulaiU2h68rYytI8gd8B+mqa
	ki/vpVfZABfffyzldOx8lE7giBgT79dsdeNLYLw8F8KRmMDzMARERqTr3WpE7MknQG3XFRJLVQ6Ee
	SuXfEvTskDJoiy1Qzac4Wbj+nCPVnduJgr+Vizy3AMNdU4UKWuhv7odm5dAYa2VgZ8/efL3r6BWRl
	zSf02IpLG9PAUEyD4mJfYqxHRglOVLKev5y3DA+Ax6iIUJXwtD+8Ar1v1lNFakDKmvoDFKFwoR0qQ
	zB9Vk8ET0/NKTE7jCcgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyZU-00057i-18; Tue, 08 Oct 2019 23:07:12 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyZE-0004xX-Ey
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 23:06:57 +0000
Received: by mail-qt1-x841.google.com with SMTP id u40so611665qth.11
 for <linux-mediatek@lists.infradead.org>; Tue, 08 Oct 2019 16:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=atsmqMocA5CyL6gwgsiLT5GHB2fp+M6rgJRLl0QguUI=;
 b=Yf1PnrqJhvtoylbafl92Bfw8ux3dLraYowqxbyDrdbEwmrb/Foqz5TlOsshmV0Dmtg
 eWdp9Ap/S27I1mPrqK6kCp3hFGr9kR/inLVgnQFRqJzjSdQKagRKhz9TqP5rjUyZKts4
 YvbQaD/6PuXN9wVWjluEGRnxy3nEbI9/RROkQ7hkF+J4IKdS7Txg3eNz2CBKTvLvb6im
 0NPb7qDBIn1959sX1s1XGAYXkgxH4CcDaEj19c54dw84PbhgslpexIDawjhjDwwXaIkU
 Xrhc0g55tOtHLW3GeWPrOzB1IQwv3bHit1hVr/EeyLrLwXYc/9xd63ti23ss0gRZQTQb
 iAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=atsmqMocA5CyL6gwgsiLT5GHB2fp+M6rgJRLl0QguUI=;
 b=odsH5pZsL6RHADaqSxhWEqqm+wrda2qfJac+HL5ADSMxF49eQgvHLSzAy75gDLHHNC
 Zk2dlhd7cuVikXBv2pEVEnoo/XNRa2hGLWGIkfMkJLVGyZInAzI3tl9yOC+dMlsK57I5
 IlJdk5w9ytWgsQBfHHqe1GDT+2XZVsTzX+JljrL8C4bkiLwN3Sxs7nC/FWbIKKUlKHHL
 S+hd4ac7KYLFF1N0TmLBb6QQRRJr8h85u4jsNNuSC1j2pETXF8d4FhuyT9dCnsl28nrr
 O8WN9FVQIjI/ff31ngtM5tU/6tLX1iTN9XcDPoDi4ECneW7QWAp9NzcrNsGZgM1WeC6L
 P0Yw==
X-Gm-Message-State: APjAAAV8GQFlVKtWD3CX7TOr3z9xbrjUw8LjlIFGBKcz3xv4BL2Ng3LE
 uTu1RahlNfniWBUHmZlFTXgUFw==
X-Google-Smtp-Source: APXvYqx/64qjNyPamHObAX+fZWZqmEP0Vy13opmS7WjDT+nYyQ/NnL33mmrlR73uH81IkMFcAKV8/g==
X-Received: by 2002:ac8:4a84:: with SMTP id l4mr463525qtq.118.1570576015229;
 Tue, 08 Oct 2019 16:06:55 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id t73sm93418qke.113.2019.10.08.16.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 16:06:55 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:06:43 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v2 1/2] net: ethernet: mediatek: Fix MT7629 missing
 GMII mode support
Message-ID: <20191008160643.1c1d31ff@cakuba.netronome.com>
In-Reply-To: <20191007070844.14212-2-Mark-MC.Lee@mediatek.com>
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
 <20191007070844.14212-2-Mark-MC.Lee@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_160656_508346_59AA1FE7 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Nelson Chang <nelson.chang@mediatek.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 15:08:43 +0800, MarkLee wrote:
> Add missing configuration for mt7629 gmii mode support
> 
> Fixes: 7e538372694b ("net: ethernet: mediatek: Re-add support SGMII")

Thank you for adding the Fixes tag. It seem, however, that the patch in
question did not change the ge_mode setting. Is it because GMII now
makes a call to mtk_gmac_gephy_path_setup() that the different setting
is required? The Fixes tag should point to the commit which introduced
the wrong behaviour, it may be the initial commit of the driver if the
behaviour was always there.

Could you add more information to the patch description and perhaps
update Fixes tag if 7e538372694b didn't introduce the problem?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
