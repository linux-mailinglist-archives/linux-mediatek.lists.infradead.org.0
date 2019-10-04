Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1512DCC360
	for <lists+linux-mediatek@lfdr.de>; Fri,  4 Oct 2019 21:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EROa2u7HWq9offUBr9qlvgBWlitJqTCvgaOPgo3hDzs=; b=BGq
	Q0sgRyGPUVdJUoM7z6FCTUmLhDkexgc1UQTMt+vhodCElMoQ7HPpzEBIh7dwfuEct/7elZTKGw5vO
	wA52Er4RobR1MSmw9aT4LYYLso6WGolrI4Kf4J4tr7As10ZDcKOoC/UQRYlB/pHhB2j1lrpLQUYkQ
	WrJo1q9IPwHZymRUlq2hkEW+Ud2sYVLIiQYTMX5MAijtDweWvR0m5ItCxCD3DPDTm3aERSvZKOmbi
	VwXix49GuqGoTTdo+MjWXOqnEiKYn8s7Lua1cjrK48CBNW12sn2FzDsSjuqFPjewPlFRcfC2mazCh
	9YiL/00vnsySyhnlPHgSbryxifCaL6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSy3-0006Qz-1E; Fri, 04 Oct 2019 19:10:19 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSxk-0004zn-Ia
 for linux-mediatek@lists.infradead.org; Fri, 04 Oct 2019 19:10:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570216193;
 s=strato-dkim-0002; d=fpond.eu;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=SjiSGCIWBrQ4el6i3TeHk1y7oyyLScjPosF/2NTani8=;
 b=ivIttvKqfCiDcwA4z15Vmmpcqg5EMNgSvZ5XCSQJkdsOLsmiPD2qqof2YHDQxYbRwV
 djnx0vNhCK4v8NV0Z3HO/D0/klePU2dIAeH1rAPx4q824owD/RBR7qYXhjo+QIpqdP2w
 OmSX0G5EvT3NHXSz8RHA/jGd/1wkZFNb370tv5n4Ex2kLmW2OFwbpJ1dKbsJLEkkAHit
 NdpN1egRlL74hxsaioNKnveym7GOzLgeaqnXk57DgJK7d+btmD830jeZBhOVcOUsHAps
 otjx2+qWJIE0dq7G9IPTxgvHNg79Iv2WFDb/Bui8xdS80B9x6/YkaGySb3XQgNSTsnZo
 Guog==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73dmm4I5W0/AvA67Ot4fvR82tdd3x2KJk="
X-RZG-CLASS-ID: mo00
Received: from groucho.site by smtp.strato.de (RZmta 44.28.0 DYNA|AUTH)
 with ESMTPSA id i07086v94J9CcdX
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Fri, 4 Oct 2019 21:09:12 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 jitao.shi@mediatek.com
Subject: [PATCH v19 0/2] PS8640 MIPI-to-eDP bridge
Date: Fri,  4 Oct 2019 21:09:06 +0200
Message-Id: <1570216148-22802-1-git-send-email-uli@fpond.eu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_121001_227105_15BC64AA 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
