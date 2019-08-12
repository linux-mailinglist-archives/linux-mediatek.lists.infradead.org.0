Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1E689C33
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 13:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r073DVICCXWc879RFHQZKZW6z1Bydoeq5y243Y5yKAk=; b=mwiIEua3vHYIuv
	LY/AHD/knEL8V02ZcTN6A4hza7cELDqKI2sdfxwkmzchRiRtQt3xSVSDa5PnVUo1mGznCQpvfuQV2
	JvtZuLqdFPCmhjOzTXMXW+tRyjCjiJtR5lCG5J+nkERuDiwvZKPDP+ZYte0Hz7RpHzElCBC4texEr
	uw9jPrYTCel2iibAdLpOyXfmqv5rEpVSGxxB74V95kK23kqEFbIHxR7lsi6O7ZFteiOeJo2tayu8r
	G5EE9hSr/j4F4O7a0aP0v3DLZ0ZSYKx7K5gmr+QAhfN5bQX19PLVCT4wcT0vJmQLKDK2naA24TmiN
	YxMsxKyVPcnnCMJFQ6kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx84u-0006rh-GL; Mon, 12 Aug 2019 11:01:28 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx83i-000669-4d
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 11:00:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so104284680wru.0
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 04:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8QwbDdz8xqQedTgCl59sT1FB6qWBgfpvrd6AWSplSFM=;
 b=un9eNtBw+OwLU4ECOEq/jaCjwbqDOeyKlR1jeFZysKarWaE6LfHAgOtOToynNr73TD
 IZ8RZq2G/h9HmZnRr8fH+UdbzJ7j1OQuTnNMaM7uYcg75t14SgAdPY9xb+6btm5hMtD7
 cM1JOj4QSiFAo09HIW/yEprtgbD/yD2CipP/o9bOD1GAJ9px4//v9vxW3QEYa8TMGaqq
 gnZ5KsRxHaRN9gTZ6mYC2ocXexOr4l/Rb5JUtRUU9c+OkT1KiY0ros3uUgjcXImhsclZ
 qVIkzEq4vwaJXR3D53rcVvMFEhWfew+kbFWC33VcCJGkMJ2v7lyTkTXiBX7JRCc/YjbH
 Qehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8QwbDdz8xqQedTgCl59sT1FB6qWBgfpvrd6AWSplSFM=;
 b=ej+1C+BzzP/HgCNegBMB8MmvPxui2asJyz2KNneJtkOutaBL1x+3qsEGZ74tLX/Y9F
 KH5oQN/l/ZpjXvdF7a3OcCtxlsQTeLKbsuBkDS+maXfcEnLSIKrH+uSv7l7LpekmGhu0
 YIochBD2fYjOtLmtRGZJ1qqC7N72bxWGy0ciOBuc2v7317Av4L/5490LJyacwldNpnfA
 gJ3gQyFOW/OQVnNKIG/89/d5V4RreC6uYv1rRUW8cDfchmkyhQ8YJK2BucelWKtjMGKb
 Y27st0nYl0QeMaHwQ75uOwB1CaTITEBwZ9uLPYrWqcF83/Dwp47RbkLkixXbTHDDkakq
 QRIw==
X-Gm-Message-State: APjAAAU7mGWMNb8G8Jy1IN7wl3QDyDbbO24guLbqzy7+11VliNl6g7VE
 gkpJMo0Cl0zBmGp1AtWYizZarg==
X-Google-Smtp-Source: APXvYqwghxYdeRuqVzPuYU2ropqG0cb6TCIVcqdi0Kn7ZW3EZH/gvO+aYyOhLrZXyhKsuMQmxwRNAw==
X-Received: by 2002:a5d:6406:: with SMTP id z6mr39714762wru.280.1565607612886; 
 Mon, 12 Aug 2019 04:00:12 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id k124sm20536169wmk.47.2019.08.12.04.00.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 04:00:12 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:00:10 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v4 03/10] mfd: mt6397: modify suspend/resume behavior
Message-ID: <20190812110010.GQ26727@dell>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-4-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564982518-32163-4-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_040014_958752_71FFC6CE 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Allison Randal <allison@lohutok.net>, linux-rtc@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAwNSBBdWcgMjAxOSwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gU29tZSBwbWlj
cyBkb24ndCBuZWVkIGJhY2t1cCBpbnRlcnJ1cHQgc2V0dGluZ3MsIHNvIHdlIGNoYW5nZSB0byB1
c2UKPiBwbSBub3RpZmllciBmb3IgdGhlIHBtaWNzIHdoaWNoIGFyZSBuZWNlc3NhcnkgdG8gc3Rv
cmUgc2V0dGluZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogSHNpbi1Ic2l1bmcgV2FuZyA8aHNpbi1o
c2l1bmcud2FuZ0BtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5Ny1jb3Jl
LmMgICAgICAgfCA4OSArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
ICBkcml2ZXJzL21mZC9tdDYzOTctaXJxLmMgICAgICAgIHwgMzMgKysrKysrKysrKysrKysrCj4g
IGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9jb3JlLmggfCAgMyArKwo+ICAzIGZpbGVzIGNoYW5n
ZWQsIDczIGluc2VydGlvbnMoKyksIDUyIGRlbGV0aW9ucygtKQoKRm9yIG15IG93biByZWZlcmVu
Y2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4K
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFk
CkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cg
TGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGlu
dXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
