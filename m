Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680D689D58
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 13:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9zNGEtuxWnM3YvQlqvFfEcKtWJi1qw6T8rIJqFeZMI=; b=daR3Bv3l53D1JW
	LqtDKd5WjF8QN+tS/s23x46xyy/NbfvD7YshedynYT5ELuCRdxJIsD7Rkt0NFwM+OCm84genHbR+u
	PoblTYYN66Ig83JsA1W8DHzAGZOY6oDJqCsKAbXjTp0ZjlqqMBhizJ0g3b7r10i+uy8XkxSXdF8ih
	4ZM09N3E9ZUUHwF3Qb2WOht9S1lbQ/6sbWEVa4MrlD/sdHwHI16m88fiNgeuoasfzEbKzhkDZkupc
	T/372o6v+6NB18vth+mLbQ8Raxf2zL8rpof1ak4XiT9G+vTj0tpZwxLHwoyWbQsdexKq1XFa/o6z7
	yh5vBHQewD4oV6MP57xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8ry-00018x-RS; Mon, 12 Aug 2019 11:52:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8rg-0000xV-UM
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 11:51:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id 10so11880631wmp.3
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 04:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=RBO3DRjOTnD2wLqgKm2sOWPkxUiw82Gd++GtZ0/46Pk=;
 b=nz/9gOYBm5f41AVteysD7l24n/Fd0CiOd3001w0L8BtaHes0R2oAL3pINo1E67hDqy
 LYLZYDx2CxxVwMBSRwITxQ7LBANizanIV8XLQDJPMvsJ77m9tES+HS7jSPuaZNNf5zLH
 nJNC3fbaSgk6TIwPbEkvXAR9YMr4uaJGNyujl8nkgLPC2ajuplKaJMLBVMygaRw4mctr
 v9K4EXL7KXzp3RsqZvOuNFZZIBgL3EH8ok18K9QCfbZD0XeauBkGNU8sGb/rdBD+mhii
 VoucQhke9qSJVeBDCh/U7CT6nQl1GGi3bHOV9kBWWjJvjTkOKetcXv8rzrMZAI1jwibq
 JScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=RBO3DRjOTnD2wLqgKm2sOWPkxUiw82Gd++GtZ0/46Pk=;
 b=rjoT2KCcAaWNiq6HwFPIF0m+Sah8QvPVNWaUMEaezwdFprgVFs2PdFXRzxoCSfv7k5
 gMAYcUx2YEvk+fh5U87jOVvrkrL9hF+cuuioqL91ClW+MTmfkW4MOt2CQxq2MwOBvDBT
 CgUy9a7Oby30f8idfY6Dc6hL3XDM5sQNkLWGBvBplt3WdEPyFm6rwOYJgouyH9Jzc8B8
 vJOrzEroVqAN8r/kiCid4zX/UMqQxJplHBorCuKaRvfJciWx0GohMVmUotWJo46yhem3
 pyjq4xh7fAUBsRveAmmXf9dyYspqF2V82fVGagHnIcUKEPvDj3YrIEY5og4mlaGQpCv0
 5hkw==
X-Gm-Message-State: APjAAAW9ZIq52oZJQiPCFFubcq/Y1qwjBU3BXG4+SJ+R5RLcbt9IkX5t
 /Gb99BHYd0Dod4zQgOiaIuxOXA==
X-Google-Smtp-Source: APXvYqwV9aoRqyXcZZQN5vuglpU7Un+RzXUmxodwxoqrNtY4ZzQnftXwr2r3/ozL4duHxbq6J6RM+w==
X-Received: by 2002:a1c:a985:: with SMTP id
 s127mr26790055wme.163.1565610711038; 
 Mon, 12 Aug 2019 04:51:51 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id s64sm22246982wmf.16.2019.08.12.04.51.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 04:51:50 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:51:48 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Re: Re: [PATCH v3 01/10] dt-bindings: add powercontroller
Message-ID: <20190812115148.GT26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-2-frank-w@public-files.de>
 <20190812102035.GH26727@dell>
 <trinity-a6c06411-16d3-40ab-a4fb-3494131c8ed6-1565608221532@3c-app-gmx-bs80>
 <20190812112507.GR26727@dell>
 <trinity-738d59ed-ecac-4025-a729-0888eaea1f95-1565609875829@3c-app-gmx-bs80>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-738d59ed-ecac-4025-a729-0888eaea1f95-1565609875829@3c-app-gmx-bs80>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_045152_977839_F4A39104 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAxMiBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gPiBHZXNlbmRl
dDogTW9udGFnLCAxMi4gQXVndXN0IDIwMTkgdW0gMTM6MjUgVWhyCj4gPiBWb246ICJMZWUgSm9u
ZXMiIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+IEl0IHdhcyBhbiBleGFtcGxlIChoZW5jZSB0
aGUgIkUuZy4iKS4KPiA+Cj4gPiBZb3Ugd2lsbCBuZWVkIHRvIGFkYXB0IGl0IGRlcGVuZGluZyBv
biB3aGVyZSB0aGUgZmlsZSBlbmRzIHVwLgo+IAo+IGkgc2F3IHRoZSBlLmcuLCBidXQgaSB3YW50
ZWQgdG8ga25vdyByZWxhdGl2ZSB0byB3aGljaCBkaXJlY3RvcnkgOykgeW91ciBleGFtcGxlIG1l
bnRpb25zIHRoYXQgaXQgc2hvdWxkIGNvbnRhaW4gdGhlIGR0LWJpbmRpbmdzLWZvbGRlciBhbmQg
aSB0aGluayBpdCBzaG91bGQgYmUgcmVsYXRpdmUgdG8gY3VycmVudCBmaWxlLi4uCj4gCj4gaGF2
ZSBhcHBsaWVkIHlvdXIgc3VnZ2VzdGlvbnMgdG8gbXkgdHJlZQo+IAo+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9mcmFuay13L0JQSS1SMi00LjE0L2NvbW1pdHMvNS4zLXBvd2Vyb2ZmCj4gCj4gcGxlYXNl
IHRha2UgYSBzaG9ydCBsb29rIGlmIGkgZG9uJ3QgbWlzcyBhbnl0aGluZwoKSnVzdCByZXN1Ym1p
dCB0aGVtLiAgRG9pbmcgb2ZmLWxpc3QgcmV2aWV3cyBpcyBhIHNsaXBwZXJ5IHNsb3BlLgoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
