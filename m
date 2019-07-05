Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E1F606E9
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 15:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SWkRqB1uAAQ1a2AwfswUX31RysZO/ZPRNVRXiPhwQf0=; b=aQTJ3leaTzjNcTju2Yq8drbbK
	G4VbP/nBwXj+kg/puIAHQsH1aqhooNcZQo0Lq3KFkXUPgbow+9QdO6urFplvf8eMovkEGs+4CB5S+
	x1Toqb8tgR3jn0TyFlqAxjiRrvl71LcbXozOSIaET3ELaKQ+73rWc+iJ4P1QFbYoaw/+6FFuZafYe
	95gvZCbOAlzU6q1aLHpbVrhFkdeziMBprowsAblUoIlbG7MYB5Oj42rBSqg79fd7y74Kk3d0E4v95
	BqaMOnmOHXYxGvW8yEjJQF5hhfn6nWZgl/3dYeq/PsAJFTs/WwRnWwd4/DENtPV9FyY3uAJpwncOv
	zH7ebX5HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOgY-0006jn-HC; Fri, 05 Jul 2019 13:55:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJl7-0001JA-0E; Fri, 05 Jul 2019 08:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jsv8xFcB6MKIEUL01wdqsJxs1kpSR6IPmJpVVpxwD5g=; b=eJNttkRHD8021MWGArqy8luZgz
 F0SO+uQotQdSqf2MgI89324NEAV3v7RMWzUtgSekxXU5ubZYpia2KHSrIHmJ19MsbOgUNP7godk/U
 lyooKoiS+UZNyEQlR+uleBGCI8VDmLjUIo4n5cm/Xjan0KzpcCBjsuFV6I9IrmdNbpX4fXzrgFmXa
 LAGE5XVXURWSd0f0G/z11szfabrjHGqw77c9VRP5CQ0BOAyN2dE4l7f2N6Ibt82pWIlLnrcQK5na/
 qdUnxJmEr7G4JswF+Y4uiLuPEEbD1qGKzbU3eCcPUlTgbaAUZQHwju8N1mXzL5liq16sYsCcGX9Gf
 iycCIaUQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJkk-0000bc-Lj; Fri, 05 Jul 2019 08:39:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 88D8228627A
Subject: Re: [PATCH v3 00/22] Associate ddc adapters with connectors
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <20190628161137.GH4779@pendragon.ideasonboard.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <44f98134-bc8a-133a-b702-589f007b175e@collabora.com>
Date: Fri, 5 Jul 2019 10:38:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190628161137.GH4779@pendragon.ideasonboard.com>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VyBkbml1IDI4LjA2LjIwMTkgb8KgMTg6MTEsIExhdXJlbnQgUGluY2hhcnQgcGlzemU6Cj4gSGkg
QW5kcnplaiwKPiAKPiBKdXN0IEZZSSwgSSBoYXZlIGEgcGF0Y2ggc2VyaWVzIHRoYXQgcmV3b3Jr
cyBob3cgYnJpZGdlcyBhbmQgY29ubmVjdG9ycwo+IGFyZSBoYW5kbGVkLCBhbmQgaXQgd2lsbCBo
ZWF2aWx5IGNvbmZsaWN0IHdpdGggdGhpcy4gVGhlIHB1cnBvc2Ugb2YgdGhlCj4gdHdvIHNlcmll
cyBpc24ndCB0aGUgc2FtZSwgc28gYm90aCBtYWtlIHNlbnNlLiBJIHdpbGwgcG9zdCB0aGUgcGF0
Y2hlcwo+IHRoaXMgd2Vla2VuZCwgYW5kIHdpbGwgdGhlbiByZXZpZXcgdGhpcyBzZXJpZXMgaW4g
dGhhdCBjb250ZXh0Lgo+IEhvcGVmdWxseSB3ZSdsbCBnZXQgdGhlIGJlc3Qgb2YgYm90aCB3b3Js
ZHMgOi0pCgpIaSBMYXVyZW50LAoKRGlkIHlvdSBoYXZlIGEgY2hhbmNlIHRvIHJldmlldyBteSBw
YXRjaCBzZXJpZXM/CgpBbmRyemVqCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tZWRpYXRlawo=
