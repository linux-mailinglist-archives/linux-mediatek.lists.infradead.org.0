Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3753F606EC
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 15:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiaEp6+1e5hIDosTwEwmsDFhYGjx2IfE41LvcKnyGcY=; b=FSxqBpKqK5e7tv
	XeVPD3UQgz0SFArBPUBFzCuUjeb2Byqjx6ZsWiU6VpQXygAyeLtNkSZ42NVplfETOQCj54ZvJNHJ3
	sknE8oSoFQMl7q2zQ3O7yduhIx81mZvaZQYGYtkgwNjQr26ZXPCWmbyEM4VgYVxTXyClLR4n3oR43
	5msRjS8k2Il9OvC5ANBuXkpwuHkXttChjf+xKHpiIqvtzOJvMieIFp+MZRh+yJbwsiXXW9wcns4KP
	7/pTUtPnYGn+jBW8/KouiCQ/yO7hmb/yu/YSg0xVEruuTCnmWLGnHPudkpSqx4YYHCPEZmjFoL3Ud
	Ouv14uZ4SnKgOxsZ1QRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOgd-0006nh-MX; Fri, 05 Jul 2019 13:55:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJnJ-0002WT-Rr; Fri, 05 Jul 2019 08:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K7sL+m5x/xqXs2m8tJ8v5lJGrF/Wg1eiHZNpl7Fhpi0=; b=eL2B021Wk0ePIPsP1AKH+71c8T
 WWxD+q2IY9OCzVKWZUzg10q6qo7NYSs9P3nV0zsAj8vm6sbKEwmIHkN5yVUcH7weQPlDu7tziN+4x
 68tDPiSUjWCeQOliI9h1qvbsZDOqgV8lDb92gn2uPwo02qYZGMQsM+JVRFwYumMZ1cN/3Shmiy5O9
 Cnhe34NDqVgIk3ulLc3V2SfT/wj4n31kGQzgWC7KRJXezU7jtOkUtrjuozjNVN7LCAqoeohw+AQSa
 MnDyk6+cYWAAGlDN/yNP3z5SbGVghiZ+m4fAH1DkM8xFP+Cz1p0dGvrz58R10aWkIG1Ofady/kByv
 QVBY3/Zw==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJms-0006GD-6R; Fri, 05 Jul 2019 08:41:48 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DADF324B;
 Fri,  5 Jul 2019 10:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1562315995;
 bh=USKu7A4PWilgTTdXdxKtoXPECYgfrGM8DlEj3pQAAto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X1pwwLHVR/7eXdMJTO0WkEhUPtQkbyKj4lTdqiGuGovVQhxKvRxa7vEFFHzwMxUzs
 KX9kqTU82CYRsTLJToik+vtuoqGa2AcS0KkMZZSIIaakDJZZeoZQPm4UvzcK9CQVWb
 N0LtHMV3M7CG297W0BtkxJNNTlmHsl9sFp/OidcE=
Date: Fri, 5 Jul 2019 11:39:34 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v3 00/22] Associate ddc adapters with connectors
Message-ID: <20190705083934.GB4994@pendragon.ideasonboard.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <20190628161137.GH4779@pendragon.ideasonboard.com>
 <44f98134-bc8a-133a-b702-589f007b175e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44f98134-bc8a-133a-b702-589f007b175e@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_094146_346305_5F746CEB 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
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
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgQW5kcnplaiwKCk9uIEZyaSwgSnVsIDA1LCAyMDE5IGF0IDEwOjM4OjI3QU0gKzAyMDAsIEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiBXIGRuaXUgMjguMDYuMjAxOSBvwqAxODoxMSwg
TGF1cmVudCBQaW5jaGFydCBwaXN6ZToKPiA+IEhpIEFuZHJ6ZWosCj4gPiAKPiA+IEp1c3QgRllJ
LCBJIGhhdmUgYSBwYXRjaCBzZXJpZXMgdGhhdCByZXdvcmtzIGhvdyBicmlkZ2VzIGFuZCBjb25u
ZWN0b3JzCj4gPiBhcmUgaGFuZGxlZCwgYW5kIGl0IHdpbGwgaGVhdmlseSBjb25mbGljdCB3aXRo
IHRoaXMuIFRoZSBwdXJwb3NlIG9mIHRoZQo+ID4gdHdvIHNlcmllcyBpc24ndCB0aGUgc2FtZSwg
c28gYm90aCBtYWtlIHNlbnNlLiBJIHdpbGwgcG9zdCB0aGUgcGF0Y2hlcwo+ID4gdGhpcyB3ZWVr
ZW5kLCBhbmQgd2lsbCB0aGVuIHJldmlldyB0aGlzIHNlcmllcyBpbiB0aGF0IGNvbnRleHQuCj4g
PiBIb3BlZnVsbHkgd2UnbGwgZ2V0IHRoZSBiZXN0IG9mIGJvdGggd29ybGRzIDotKQo+IAo+IEhp
IExhdXJlbnQsCj4gCj4gRGlkIHlvdSBoYXZlIGEgY2hhbmNlIHRvIHJldmlldyBteSBwYXRjaCBz
ZXJpZXM/CgpOb3QgeWV0IEknbSBhZnJhaWQuIEkndmUgYmVlbiBmYWlybHkgYnVzeSB0aGlzIHdl
ZWssIGFuZCBjb3VwbGVkIHdpdGgKc29tZSBoZWFsdGggaXNzdWVzIChidXQgSSdtIGZlZWxpbmcg
YmV0dGVyIG5vdywgc28gbm90aGluZyB0byB3b3JyeQphYm91dCkgaXQgZGVsYXllZCBteSByZXZp
ZXdzLiBJJ2xsIGdldCB0byBpdCBhcyBzb29uIGFzIHBvc3NpYmxlLiBUaGFuawp5b3UgZm9yIHBp
bmdpbmcgbWUuCgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcg
bGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
