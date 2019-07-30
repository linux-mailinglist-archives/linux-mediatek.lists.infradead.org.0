Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226A47A8B0
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Jul 2019 14:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4htG2o8K1JaO2mQVVK70AEQ/p+8buRcpUu6XChcgG4=; b=aWg7dYvqY3ywX9
	oqYCzwEqgBE1NbA4lbNcAZYq56W1+x+bz6TPpSlCtbB4iVtNEJed+m7eMS3dSc5xLvHH72qO3rBdK
	dRKw9iqaHKHlXU5qxpc3vxUPp4MtRF97Otkxu8REjFOW1BkJf/gYlpPCjccL3l4ISra+5QTpSTVhR
	d73iLoWRX6sZq8+nlgY4SHBHqYdS8VxnoNFj9N1GUwirwKfk5FTrlyRmNqM1IKH2VxP3O22s9x7aP
	MrkUczgB27IaxYHFKp8oeb7B+x1N9q3113l/8UkQ6+XqDiwHtfbiEZNwdNYMQS9fjP2jm1I8epyuh
	viJlMX9rZxthZ7TJ1qRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRNN-0000ve-Kv; Tue, 30 Jul 2019 12:37:09 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRNI-0000tK-3f
 for linux-mediatek@lists.infradead.org; Tue, 30 Jul 2019 12:37:06 +0000
Received: by mail-qt1-x841.google.com with SMTP id d23so62834383qto.2
 for <linux-mediatek@lists.infradead.org>; Tue, 30 Jul 2019 05:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=n792zjXbKMn7YCTSjsK0c7rZug8cVAZEXdpG+zafkUs=;
 b=hqyWeBR0GpIR/dKAgWibP2xmKk9SulmD7z5Dn+OwVwnVkWx+7ziiileTfA+PtyflzT
 NCtwjTC8sYHI9UNdSZI7dpe2iy1Q3zkU4UWH8iy54ARmGAGk9bHzgdkGTOLq61jMo/y1
 6ZXG0nKNN679OcMRcoxPasMqFkniZKs/5KmVzMSRjOM5u+W+D3GhD5osis1Bv5P6nBGr
 asuMBD5TQGSYd+CowUBZgKxIXeKrOeEgHYtwCRUdNaLtTxLx6BR56v/WZ3hWbhByGhh4
 G7rSygWiMjDi4IzIFtZV//YhW726BKSTPcJrUCjVB4gqtadF/n7wzQ+OY5/N7h087FL8
 HssA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n792zjXbKMn7YCTSjsK0c7rZug8cVAZEXdpG+zafkUs=;
 b=d8a3l6B0FxwK5vpM6pPmGySVgXHTkDxpGzUPPj2clrtYJASw3+W51ExbbHC9BCe7iH
 krzX52cdMy4+6wcG2F4Gkw/i1ouackq1M9GlHYE26LUHcaThQlXBD5MSv3dIl0VpJD3n
 CiyJsqizxuxw94fpGjcLjwitt4WhPhqUw9wIzGI0POPT7EHxzzvBB6By4D5f2c2HTxcd
 XBCqW7JFnxu9sLPkpgXi3lvloJ8fA3MM/JVfTBt8sGi0Xh+L6uTtD8FPsdwCfJU/lPg3
 9xL2bAlrgTpYBHLhwOdiqMksHr5Gdo1D4ajAzI9pgzkZCauxCkm15W09ySCk8d5fOxpT
 6Trw==
X-Gm-Message-State: APjAAAVI48ljiep0J7rASDL2T4A7ZRJ6LLkltBrZvDlYN+ntVlvO9Ax9
 cvfDz4VhXjtubV/xumAgvsRIlMXUUNZ/KvmoicW8Xg==
X-Google-Smtp-Source: APXvYqwUTlaCNODMj8Our73tOJ/aN3xFKkF1HOiUDO6XMR5NzvTl2Jv1UFszMtRL0CaUO3v2uM3c75R2zBlJJ/fKvGs=
X-Received: by 2002:aed:3f47:: with SMTP id q7mr82155223qtf.209.1564490222670; 
 Tue, 30 Jul 2019 05:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <510765aff8ef99683aa2da48bd08004376b1980a.1564161140.git.andrzej.p@collabora.com>
In-Reply-To: <510765aff8ef99683aa2da48bd08004376b1980a.1564161140.git.andrzej.p@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 30 Jul 2019 14:36:50 +0200
Message-ID: <CA+M3ks46eO_yE+Jd9SWPJ6eD+m1TZPCKuBcZsmpy6Ta9PZFfhw@mail.gmail.com>
Subject: Re: [PATCH v6 16/24] drm: sti: Provide ddc symlink in hdmi connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_053704_161329_75CE21C4 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Jyri Sarha <jsarha@ti.com>,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TGUgdmVuLiAyNiBqdWlsLiAyMDE5IMOgIDE5OjI3LCBBbmRyemVqIFBpZXRyYXNpZXdpY3oKPGFu
ZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiBhIMOpY3JpdCA6Cj4KPiBVc2UgdGhlIGRkYyBwb2ludGVy
IHByb3ZpZGVkIGJ5IHRoZSBnZW5lcmljIGNvbm5lY3Rvci4KPgo+IFNpZ25lZC1vZmYtYnk6IEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMgfCA2ICsrKystLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3Rp
X2hkbWkuYwo+IGluZGV4IGYwM2Q2MTdlZGM0Yy4uMzNkMDZlMGE5MTY4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9z
dGkvc3RpX2hkbWkuYwo+IEBAIC0xMjg0LDggKzEyODQsMTAgQEAgc3RhdGljIGludCBzdGlfaGRt
aV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lkICpk
YXRhKQo+Cj4gICAgICAgICBkcm1fY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BP
TExfSFBEOwo+Cj4gLSAgICAgICBkcm1fY29ubmVjdG9yX2luaXQoZHJtX2RldiwgZHJtX2Nvbm5l
Y3RvciwKPiAtICAgICAgICAgICAgICAgICAgICAgICAmc3RpX2hkbWlfY29ubmVjdG9yX2Z1bmNz
LCBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEpOwo+ICsgICAgICAgZHJtX2Nvbm5lY3Rvcl9pbml0
X3dpdGhfZGRjKGRybV9kZXYsIGRybV9jb25uZWN0b3IsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJnN0aV9oZG1pX2Nvbm5lY3Rvcl9mdW5jcywKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaGRtaS0+ZGRjX2FkYXB0KTsKPiAgICAgICAg
IGRybV9jb25uZWN0b3JfaGVscGVyX2FkZChkcm1fY29ubmVjdG9yLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICZzdGlfaGRtaV9jb25uZWN0b3JfaGVscGVyX2Z1bmNzKTsKPgo+IC0tCj4gMi4x
Ny4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVk
aWF0ZWsK
