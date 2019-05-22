Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E8D270C8
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 May 2019 22:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9LgMDEz84M3RGkCuaAtgDFUOWKCjw2Xiic3t9qOJTb0=; b=lJNMk8eJUBvp0q
	ACUCGfN33MXq6T4UIEvHd3zFtHCNGs7pAPIgK2Vq3vkq2BLVVGT9Dkg4uYCmMd9nmXPrhL1gJ9LwN
	I9caAIrQTHD+nF0U2y+G5zFDBMYTeEZIs7Acea+gWLzsvjiFZjh32uzeSlQUVFvBdnP/2bAskM+YX
	Gt9eY4a9nSu6VQ+DZgxJxTFP2UKayFUh7lj8xASmq+CCiOYJ0mplmchr3wsaxTyWXivE8hzA6dRrY
	9U90qtvoBUunFU7P+5+eeCnS1wwFdK3IVW3kpWyZxV5lxkTRRVdA1qGtlFdB6h/Ic26vNFeMwhRcY
	8X5sGP9u6xl61MX/JbdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXkg-0001ip-3i; Wed, 22 May 2019 20:22:18 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXkZ-0001hu-RB
 for linux-mediatek@lists.infradead.org; Wed, 22 May 2019 20:22:16 +0000
Received: by mail-qk1-x743.google.com with SMTP id a64so2376370qkg.5
 for <linux-mediatek@lists.infradead.org>; Wed, 22 May 2019 13:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zmy7j+V2kfqtYYz1WddkagE0DXlderr4yqX5VeQ0jxE=;
 b=Wv7fYjcBuPUYR9MTgyDgURjkjHlUrU+vf2Rjh5kikh+aeZcuBsA45dQS0W772uQXyR
 wJy78nYNEK2ip1KWnGM2LE22p5ty2akRWDyauopLTLGmMOimVzjTRVfFCtf1un/wRAhF
 H39a8cuaCC555EA90d9ghjrpvYjUMsCiJYkUByOaPQzw83C2xylldr98kJUHCtnGmcLy
 ZKCvmW1B9b0npeIxz4U15fKa2mrqGczcA47ac45qCszR0woi68ptU/PdMxnm5xrBbvIY
 jqHC27QIKbDoyUxjHvLVb6+EEAh2qcJtkbObfDMEZWzFgOk5einIXqDBdrI/NOjAONzY
 Br6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zmy7j+V2kfqtYYz1WddkagE0DXlderr4yqX5VeQ0jxE=;
 b=MynbTT61in/rmt5cKJOVbMbZrbzaTk2yurokjlFdw5QY3+HLFLu+K9H80LGTXxdQMp
 da0wpPzpCP5sVMBssJE8e3DTDfXwvLqUlrxs0+cpJgihinkVpLZHd6y2sfkqmPVe3E+J
 UC/6gnWHOuUMuHELIFC6dYiAfPvMpEm4S8jj7PpjoddtskwX1vuL4Fwkx+GlNiIosSGz
 s4k5hWr8dfUNLKV9GsjnPjxwZ+/785JQgBplQVua4FGepdPOkB5pmfONyn/MtcoEldUe
 ZTHFOZs3TJMsM8fAqHHHU7444a5wFHjsoUdhLGWVVdwD7N0+H+eFvymy4WEPcEOQsKYG
 XJzw==
X-Gm-Message-State: APjAAAX75Vusuzdw2Oc+J/vTar0J049s9HUfefwKREMPiQlPxA/7rh/B
 WQy2i8II+sqKk1bV4MwnMVarfg==
X-Google-Smtp-Source: APXvYqyr5JtWJBxoh41hbTAkOsXHCvEtb3C3/m7M5P7Ry9zlF0gq04xYFw3DvF+dqaIxFQ/JKexWLA==
X-Received: by 2002:a05:620a:141c:: with SMTP id
 d28mr40026915qkj.18.1558556529503; 
 Wed, 22 May 2019 13:22:09 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id t187sm4546863qkh.10.2019.05.22.13.22.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:22:09 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/mediatek: Fix warning about unhandled enum value
Date: Wed, 22 May 2019 16:21:54 -0400
Message-Id: <20190522202207.223110-1-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_132215_383986_05CD1578 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Hans Verkuil <hansverk@cisco.com>, David Airlie <airlied@linux.ie>,
 Uma Shankar <uma.shankar@intel.com>, Sean Paul <seanpaul@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpGaXhlcyB0aGUgZm9sbG93
aW5nIGJ1aWxkIHdhcm5pbmc6CmRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jOjMy
NzoyOiB3YXJuaW5nOiBlbnVtZXJhdGlvbiB2YWx1ZSDigJhIRE1JX0lORk9GUkFNRV9UWVBFX0RS
TeKAmSBub3QgaGFuZGxlZCBpbiBzd2l0Y2ggWy1Xc3dpdGNoXQoKSW50cm9kdWNlZCB3aXRoIHRo
ZSBhZGRpdGlvbiBvZiBIRE1JX0lORk9GUkFNRV9UWVBFX0RSTSBpbiB0aGUgY29tbWl0CmJlbG93
LCBidXQgdGhlIGNvZGUgcmVhbGx5IHNob3VsZCBoYXZlIGJlZW4gZnV0dXJlLXByb29mZWQgZnJv
bSB0aGUKc3RhcnQuCgpGaXhlczogMmNkYmZkNjZhODI5ICgiZHJtOiBFbmFibGUgSERSIGluZm9m
cmFtZSBzdXBwb3J0IikKQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+CkNj
OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IE1heGltZSBSaXBh
cmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5
LnJ1bj4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3ogPGIuem9s
bmllcmtpZUBzYW1zdW5nLmNvbT4KQ2M6ICJWaWxsZSBTeXJqw6Rsw6QiIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEhhbnMgVmVya3VpbCA8aGFuc3ZlcmtAY2lzY28uY29tPgpD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtZmJkZXZAdmdlci5r
ZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3Jn
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIHwgMyArKysKIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5j
CmluZGV4IGUwNGU2YzI5M2QzOS4uMTBjYzk5MTBmMTY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2hkbWkuYwpAQCAtMzQxLDYgKzM0MSw5IEBAIHN0YXRpYyB2b2lkIG10a19oZG1pX2h3X3Nl
bmRfaW5mb19mcmFtZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWksIHU4ICpidWZmZXIsCiAJCWN0cmxf
ZnJhbWVfZW4gPSBWU19FTjsKIAkJY3RybF9yZWcgPSBHUkxfQUNQX0lTUkNfQ1RSTDsKIAkJYnJl
YWs7CisJZGVmYXVsdDoKKwkJZGV2X2VycihoZG1pLT5kZXYsICJVbmtub3duIGluZm9mcmFtZSB0
eXBlICVkXG4iLCBmcmFtZV90eXBlKTsKKwkJcmV0dXJuOwogCX0KIAltdGtfaGRtaV9jbGVhcl9i
aXRzKGhkbWksIGN0cmxfcmVnLCBjdHJsX2ZyYW1lX2VuKTsKIAltdGtfaGRtaV93cml0ZShoZG1p
LCBHUkxfSU5GT0ZSTV9UWVBFLCBmcmFtZV90eXBlKTsKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUg
RW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4
LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
