Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DE913BA83
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 08:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qxbvjy149aMcjvfRyDju0Ryi+CHxC/o9LyLWiqv4F4k=; b=oe0TP22ZNauUdI
	HCXzCaIzkzd88+71ZFgz2crtNMmGfpwR5KavsV6C9eXNdG5U2IwViEW7Hj+f4CDsoWpA0qLhgySBl
	g62zSMlvtWfUMYHRmYM5SsZCYNIIutm5v4gHNNBym9KMcup6XohluowtTK90sMsloY/tjpTG75URm
	4WoMpqNE1f8MHivw7bMZxLB0RhHGJGBXSd8yN/mfvwaEwfUN+BHRp5YsZ6v8PMA/vWBDOgppcDgRh
	NJ+HKi0C8D8B6bTDpXK6/ZYze2G/gQnrRSdsH0BtrB1zRBh3XiwSSTT0GgRGALpCXHG8GvUXbmAn9
	kHNPPQvbCQwK+biYIIog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdW0-0005Rs-6s; Wed, 15 Jan 2020 07:55:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdVu-0005Qt-Dm
 for linux-mediatek@lists.infradead.org; Wed, 15 Jan 2020 07:54:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so14712018wrm.11
 for <linux-mediatek@lists.infradead.org>; Tue, 14 Jan 2020 23:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=15L7jlFqNO2Bso518qKUnevC0GsYD/ESd/nGLMhwY18=;
 b=YvUkGk7+bHFbBiHvppN2kI5YCnCNxnXe3u7oi6v/yBKhT0qQ/TUefkDTiAscRl6mJU
 9+PNZhlEvHQKdI9U3T9G+drI9Bu1AAsx4FOTyEjfy3XUi9Bn4Zl1qnfj/g6L8y2/2sMQ
 NtWrWvvsc6KubXhZu5tA4a15M9I3G6heuTACJ///AKb339G4xRF1OUQDwuls0BNHj6Dd
 L+Ao+9F6DyIGDmlExl1k6P91ReYIN3xWIVpMaL/vUlNo5n0UkHMmtI+SU+9i6s4wQefw
 cAa2en57TyecoCFj7V2uTmp3Sdl6biCxiHChJnF7z9QB2zNP10RiP0Dz/4UHcPuNjkvP
 /aSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=15L7jlFqNO2Bso518qKUnevC0GsYD/ESd/nGLMhwY18=;
 b=UbhjGP4QmXVhtinsAXhdsD1G8C2Uf6qOSTEvK7PsPZ+Os5HQ8hq/UowmZWpkk7khV6
 vGRNPYaiZ52eRZvP8A2FnrDwoiEgOk+BY/VEVwAXVv0hF3h0/6DjBDaKRwajFyMkZBeF
 J+/f5cb3z476qqevV9FjP29kMFp+Mo4mRBCJAhgaWD9GgyihUgNuK6NASZyRQYLVDzEc
 Zdsd5/BvoCO0rBGuCg+B0eFcYJKpihNm9RjTBhswp/LTRTqOzwL6Ozwm+7SkKv8Y2Hk/
 tHt/VFgkbO/9nAwfWyqZp9DUkgjl7Knkr401lgS8t8d6XbqKCVOs/hD80uDuSlcl7wTz
 E3kw==
X-Gm-Message-State: APjAAAWN00GKvSn2LFDpiRJv5MkGFg1d1AtlPwvcbcuCOdeOBYB0PEbF
 RKAqpebgBhhVVljd2MNd0l4ZBA==
X-Google-Smtp-Source: APXvYqyGZdgYfY2VItz4h8XSNP932dhDZZ7eluAWOElft/WQQOcEsxckB+CTyI0jPiwls4B9Ze0uDw==
X-Received: by 2002:a5d:49cc:: with SMTP id t12mr28623351wrs.363.1579074892536; 
 Tue, 14 Jan 2020 23:54:52 -0800 (PST)
Received: from dell ([2.27.35.221])
 by smtp.gmail.com with ESMTPSA id o4sm22723616wrx.25.2020.01.14.23.54.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 23:54:51 -0800 (PST)
Date: Wed, 15 Jan 2020 07:55:11 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v7] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20200115075511.GB325@dell>
References: <20200107153314.21486-1-gene.chen.richtek@gmail.com>
 <CAE+NS34ULhk=CLo+e6gAO3SF9NW1cTAZcpMvX1yLfChNCJTpRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE+NS34ULhk=CLo+e6gAO3SF9NW1cTAZcpMvX1yLfChNCJTpRA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_235454_788802_336900BF 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gV2VkLCAxNSBKYW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBIaSBMZWUvTWF0dGhpYXMs
Cj4gCj4gICAgIENvdWxkIHlvdSBwbGVhc2UgaGVscCB0byByZXZpZXcgbmV3IGZpeCBjaGFuZ2Us
IHRoYW5rcwoKYSkgSWYgeW91IHRoaW5rIGEgc3VibWlzc2lvbiBoYXMgYmVlbiBhY2NpZGVudGFs
bHkgZHJvcHBlZCwgeW91IHNob3VsZAogICByZXN1Ym1pdCBpdCBhcyBhICJSRVNFTkQiLiAgUGxl
YXNlIGRvIG5vdCBzZW5kIGNvbnRlbnRsZXNzIHBpbmdzLgoKYikgSXQgbG9va3MgbGlrZSB5b3Ug
aGF2ZSBjb21wbGFpbnMgZnJvbSB0aGUgJ2J1aWxkIHRlc3Qgcm9ib3QnLiAgWW91CiAgIG5lZWQg
dG8gYWRkcmVzcyB0aGVtIGZpcnN0LCBiZWZvcmUgcmV2aWV3LiAgT3IgYXQgbGVhc3QganVzdGlm
eQogICB0aGVtLgoKPiBHZW5lIENoZW4gPGdlbmUuY2hlbi5yaWNodGVrQGdtYWlsLmNvbT4g5pa8
IDIwMjDlubQx5pyIN+aXpSDpgLHkuowg5LiL5Y2IMTE6MzPlr6vpgZPvvJoKPiA+Cj4gPiBGcm9t
OiBHZW5lIENoZW4gPGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiA+Cj4gPiBBZGQgbWZkIGRyaXZl
ciBmb3IgbXQ2MzYwIHBtaWMgY2hpcCBpbmNsdWRlCj4gPiBCYXR0ZXJ5IENoYXJnZXIvVVNCX1BE
L0ZsYXNoIExFRC9SR0IgTEVEL0xETy9CdWNrCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogR2VuZSBD
aGVuIDxnZW5lX2NoZW5AcmljaHRlay5jb20KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbWZkL0tjb25m
aWcgICAgICAgIHwgIDEyICsrCj4gPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgfCAgIDEg
Kwo+ID4gIGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMgIHwgNDI0ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaCB8IDI0
MCArKysrKysrKysrKysrKysrKysrKysKPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDY3NyBpbnNlcnRp
b25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMK
PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLmgKCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVk
aWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
