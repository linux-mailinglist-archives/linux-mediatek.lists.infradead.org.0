Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387C6CDD2B
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 10:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ThLOHWmRVuZ/txvyWc6yDtrnp3Eo0VInFNjeNeHvo04=; b=kgZ
	NpJKCHwtey44W313v//wkOs9wYXMQs2eaeiKSbt7cxhzVuJ/tl3HlIlJ3wdZFAPTw+NdExkxYXw8J
	bRKZzUvl98Fxe42QaGq6H1rUudZBZ+u1f2RsBlOb7/UTYoX9Cc6NMkO7BCh7b33gOPlavxScZzuhI
	bg4LMudI7OJGQvYxLtwMyQnKSWZW83Hrx72gLgcLAxBcVSlWnsGrJxOD82sUrRL7H1tHN1CD6nLI3
	3VMnsKhRRLaXXJuYQOoaR7HnWGrib923i+Y6EoEXCX+syAZqB692Yct6YrA66ibevz6/+afAWMN4v
	T6sj/BbVYlcehOMDspFNV3RWWlP3HnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOIc-0006hg-3E; Mon, 07 Oct 2019 08:23:22 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOIX-0006fs-0L
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 08:23:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570436594;
 s=strato-dkim-0002; d=fpond.eu;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=K4lPRF6A8fnUsH8X93B6bF22TBUJNSeza1MuRKIljOM=;
 b=gJeoaAwJFkox3VeCYeC/1GIJEnAJQUOiOEWgmW8m/tlzlglB6H+TKUV7VHCm3gOqWU
 viqDBJMC3krhGjruhbTp5wRYMTW/WtoXLUFe8521dmNkh51W6vtvpuUlyGOC2NqYOt0A
 +1K+E7AhJxbUiO3Lj6gjtCTQiQgZQQ0JhRs6lKR74tPnzPj4NkYigW/GSlhilbVBZ890
 UbI3rIIagJZwNprU/8yFQ53itWWtYd4QP5y7SM+pVPzU/WRSMYHSz0B275jjJMs5nAq9
 TnbDwUCMV8vOD8ThHhmNYgUPH74zf2XNMYmMnQZX2XNkiITmAyx3friMPVSTgu/sz8u4
 8/FQ==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73dmm4I5W0/AvA67Ot4fvR82Ncd3IXOg=="
X-RZG-CLASS-ID: mo00
Received: from groucho.site by smtp.strato.de (RZmta 44.28.0 DYNA|AUTH)
 with ESMTPSA id i07086v978MWftY
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Mon, 7 Oct 2019 10:22:32 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 jitao.shi@mediatek.com
Subject: [PATCH v20 0/2] PS8640 MIPI-to-eDP bridge
Date: Mon,  7 Oct 2019 10:22:27 +0200
Message-Id: <1570436549-8694-1-git-send-email-uli@fpond.eu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_012317_194308_B7409574 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Ulrich Hecht <uli@fpond.eu>, stonea168@163.com,
 ajaykumar.rs@samsung.com, architt@codeaurora.org, vpalatin@chromium.org,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 yingjoe.chen@mediatek.com, devicetree@vger.kernel.org, p.zabel@pengutronix.de,
 pawel.moll@arm.com, ijc+devicetree@hellion.org.uk, inki.dae@samsung.com,
 robh+dt@kernel.org, seanpaul@chromium.org, matthias.bgg@gmail.com,
 eddie.huang@mediatek.com, rahul.sharma@samsung.com, kernel@pengutronix.de,
 galak@codeaurora.org, enric.balletbo@collabora.com, andy.yan@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi!

This revision fixes a minor issue that keeps the driver from probing on
the Elm platform. Thanks to Matthias Brugger for testing.

This driver seems to have fallen by the wayside because, while otherwise
fine, it has a firmware update feature that requires a blob that is not in
the linux-firmware repo.[1]

Whatever the cause for that may be, the update code is entirely optional
(my chip works fine with whatever firmware is currently installed), so I
have removed it in order to get this merged after all. I have also
followed various trivial API changes that have piled up since 2016; see
the individual patches for details.

I'm using this driver on an Acer Chromebook R13 ("Elm"); see
https://github.com/uli/kernel/tree/elm-working-5.4.

CU
Uli

[1] https://patchwork.kernel.org/patch/9427543/


Jitao Shi (2):
  Documentation: bridge: Add documentation for ps8640 DT properties
  drm/bridge: Add I2C based driver for ps8640 bridge

 .../devicetree/bindings/display/bridge/ps8640.txt  |  44 ++
 drivers/gpu/drm/bridge/Kconfig                     |  12 +
 drivers/gpu/drm/bridge/Makefile                    |   1 +
 drivers/gpu/drm/bridge/parade-ps8640.c             | 672 +++++++++++++++++++++
 4 files changed, 729 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ps8640.txt
 create mode 100644 drivers/gpu/drm/bridge/parade-ps8640.c

-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
