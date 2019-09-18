Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B116B61D8
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 12:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDSjKqfladwgYwauVB4RsMP/tOWUg3P1EG+AwzpsUdU=; b=B4VRDL0k4x/+oJ
	PyV+WmM6pfVJohmDYIhY0i53H38+wDhYRnSlsYthGNEZINCGlBH4xaVU++W1M0GqV0A8DPU4JmLzR
	1eHPd7xww4sxVlh2PZ4nMGo81HKCqKdSSiVrDCLntFnf6j+nl7RBkBXzRhCs5ibc1X7uH4+B2WdpD
	TKPxUM9exOtB30BEoLyb4WTixyE1RAVc/WaOSDnsV1yNvMLGpZh6RcRopK5Ebp5AVHY8GiMHXkxAt
	PRLPlrsL5eYRxxCnW69p4vPaY9zkS9OyLvy7LbvkWG9VHnCFnmfasxO8yePf2k0yLlt/kIxTU3b5q
	S/yODHK3HH9C3JdPJPvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXYf-0004W9-Ou; Wed, 18 Sep 2019 10:51:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXYT-0004GP-GM
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 10:51:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so4508955wme.0
 for <linux-mediatek@lists.infradead.org>; Wed, 18 Sep 2019 03:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=JVv4hk+4LU2vJDNGx2vhcqczhQQUoh+G5X8X8U4GwqU=;
 b=aN54ur3KkGtiC4fj7yimPdv3HMIqVFRGOoft8l/i5fSPRMHOl6JF75HJ+lIa5ZziJ8
 RpsbkaIIBtKmy61Qdqb6kOnPGvn7aOa+mA80690Va+YRVEJEpeSHxAs1QitJbyILr0Wq
 Dogw/YfoTbqr2t49fLFqf+op6bbImPUmhB56ApM56rYzYjcbjYrbKcOwe63HQ49fNOX9
 v2eBs6gzhjqPk4MC/v9S6LNHPtmhCOgrr7pagTSIiN+jCTSo6cqRGUVI+3dSMabL6QqG
 3/ED38tescn9RMzor1s4ww0BTPBVP0DFqwO0LCJUxOaSAN+LGlt0zUahPjSwQTjq92hz
 4LvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=JVv4hk+4LU2vJDNGx2vhcqczhQQUoh+G5X8X8U4GwqU=;
 b=mBaKGgJEB6vs4b0TheABwkd58XdoeaJeNKf16f9deM/+HWwaa+4JrgENOinimpwL/A
 M33s39Tag/7T4p5FbUry8D6vU+V00ItHEJV3kJuHY9vDbftSOfT6Tpgmx0G7ZO7XJWZ9
 zHgy00bFUWZFeCIGtT/+pV+MZt4E0gefh+KeLD5jXhTQo6czt39zmnDtkMEJEJagtUMF
 4Y04lAH9T+8nhGg7cqfB4TygQHX0BNtFwF+FMm8CjS3macyIWGL6IawC70JmG4IWcQjb
 mox2npeUfE3jp6lQhVrOrftmwOFkOlWUIOwqmSl6hk3P1KBPsEzrWH8k7Q8YZbdXH0aB
 q9MA==
X-Gm-Message-State: APjAAAURc9Rynd3D7R3wtttoas5CQaZUMnrFSQgGpN7YHI1uakKRuRiZ
 rgwMebWIC8rnaHi0d4yGwH/dJQ==
X-Google-Smtp-Source: APXvYqynJXkScyO65ZwXnbjbsK5K7mcXL60yrXfJxXtICcR1O2he7LJfJ7TjzExD6/kawj+vRoCG2w==
X-Received: by 2002:a7b:c398:: with SMTP id s24mr2381161wmj.78.1568803883055; 
 Wed, 18 Sep 2019 03:51:23 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id j1sm8055902wrg.24.2019.09.18.03.51.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Sep 2019 03:51:22 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:51:21 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20190918105121.GB5016@dell>
References: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_035125_632687_7E6D8398 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gV2VkLCAxOCBTZXAgMjAxOSwgR2VuZSBDaGVuIHdyb3RlOgoKPiBGcm9tOiBHZW5lIENoZW4g
PGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiAKPiBBZGQgbWZkIGRyaXZlciBmb3IgbXQ2MzYwIHBt
aWMgY2hpcCBpbmNsdWRlCj4gQmF0dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFzaCBMRUQvUkdCIExF
RC9MRE8vQnVjawo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2VuZV9jaGVuQHJpY2h0
ZWsuY29tCj4gLS0tCgpUaGlzIGxvb2tzIGRpZmZlcmVudCBmcm9tIHRoZSBvbmUgeW91IHNlbnQg
YmVmb3JlLCBidXQgSSBkb24ndCBzZWUgYQp2ZXJzaW9uIGJ1bXAgb3IgYW55IGNoYW5nZWxvZyBp
biB0aGlzIHNwYWNlLiAgUGxlYXNlIHJlLXN1Ym1pdCB3aXRoCnRoZSBkaWZmZXJlbmNlcyBub3Rl
ZC4KCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTIgKwo+ICBkcml2
ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9tZmQvbXQ2
MzYwLWNvcmUuYyAgICAgICAgICB8IDQ2MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC1wcml2YXRlLmggfCAyNzkgKysrKysr
KysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaCAgICAgICAgIHwg
IDMzICsrKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDc4OCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL21mZC9tdDYzNjAtY29yZS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAtcHJpdmF0ZS5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpM
aW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVk
aWF0ZWsK
