Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7142E1E399D
	for <lists+linux-mediatek@lfdr.de>; Wed, 27 May 2020 08:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALkVlPZYML9wfuq+Bn7JxjnqMxmefKK1/eLCrtqjDnQ=; b=YZSlDnuZwsFY36
	1uz1lytF70NJL921lPNL15+kXiS601x0KQPAsZx1JEymZXlWfffhloo31pVyqcAvdsxgvjiTWE5B5
	X2mhD1o+psnGV7oxsCHzhNk27CCbOl7vp7oH76dMchZknaQIFZS3OvYZNTATePz/tXHrJptlPsYGN
	wkBNKydQ32LXb/sC1woqVc5NlwiRKtMT83cr3P0eEG1s9BNtugOHNtkHNHkfdMDoWIAEwVv52XDSb
	oFn1T9qf8+uZJv6HRYhjWJUtE7s4MlwAtI81m3oMpW/biFA5ZgAa9CwZoaLzuF57YhL18AlcYl3EL
	hqB6hJToGIdVOCXHfmwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpsZ-0002EC-6m; Wed, 27 May 2020 06:49:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdprn-0001pI-Qj
 for linux-mediatek@lists.infradead.org; Wed, 27 May 2020 06:48:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so22857462wrt.5
 for <linux-mediatek@lists.infradead.org>; Tue, 26 May 2020 23:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7LeU+UdXoVHvFWpsdH5qXrt3tNYpvrrAzAhZwkjADGQ=;
 b=SmaCrk1LUTHh/o2KutIjiCIhUy4p30yQHnviy8ti4ZwcaHDwd6ws2zOoJXCD1GtH3d
 bHfOzstoNYWWf7Q0flomJc9/Nz+vo3BqmAUBxCS0XMXl/rFW+XzLLki0gr7egFYM4P16
 ykY1ein2Dd/+QdRZP7Lj2vHJfNOuWhM/Hhe3V8kkLDmFgm8fI4a48i9UKy0hlQC9tDmv
 +rSsqKf89zwOk29h+O6fEh8kYjKHu7igS1L3wGnbGxpU0tu1Pr4gzG9pcwYJzVZ36Zfp
 L7LGDbBn4PknYChrdqbWJYYZ9/kDIpS7Z/A+FGhPT8UEZFhhDetJW0xIkcc668cFQHu8
 g8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7LeU+UdXoVHvFWpsdH5qXrt3tNYpvrrAzAhZwkjADGQ=;
 b=aY34J9YW0OWTKTJqWOIJXek/5arPkCloagpLQUqaT8RR947SgcUs6rXlcZwv8KZJr3
 P+hkJBttbAmDVa4tU5JjUhD81QvBgVByOKtr2R5pI2dEQLSbTy6EF0us8wcwVYOg1XdZ
 Wg8JA4ax/C4XcKUw85DkUdkXDmjr5vKDjF+kc4NAhZBTUM0+aD9DuAF69QJxMEhmIVJa
 up833r+yPMffSUdvtz4nLHPd19p9EQFe6D8+MZbouCJoEL4cYQxjMKjo8bmQlp1Ebknk
 Tq1OYh/t5xi6b6Y3D4x4BOYdFvoVvYDnJO6Is+xlkXXDPbLGTh+s6lNZtN/cIMyj8UhQ
 J+Rg==
X-Gm-Message-State: AOAM533J1GgxoTY67Gqd74r+mfqkkGdcsWTCZH29suHGC8bN3FilgiGx
 RErorBMIV529Dg2RiuVgddX/LQ==
X-Google-Smtp-Source: ABdhPJzRJyz8F0b7HQ/1rq5CWl6Hbi5Qoq1hArVmbFt9djqf5RvekT+nqWLxuMM5Mz4mMLZA+HquTw==
X-Received: by 2002:adf:a157:: with SMTP id r23mr9862016wrr.92.1590562121246; 
 Tue, 26 May 2020 23:48:41 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id j4sm1924642wrx.24.2020.05.26.23.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 23:48:40 -0700 (PDT)
Date: Wed, 27 May 2020 07:48:39 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v9] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20200527064839.GO3628@dell>
References: <1587641093-25441-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587641093-25441-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_234843_958022_71A6E230 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gVGh1LCAyMyBBcHIgMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBBZGQgbWZkIGRyaXZlciBm
b3IgbXQ2MzYwIHBtaWMgY2hpcCBpbmNsdWRlCj4gQmF0dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFz
aCBMRUQvUkdCIExFRC9MRE8vQnVjawoKSSBjaGFuZ2VkIHRoZSBzdWJqZWN0IGxpbmUgYW5kIGNv
bW1pdCBsb2cgYSBiaXQuCgo+IFNpZ25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2VuZV9jaGVuQHJp
Y2h0ZWsuY29tPgo+IEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgIHwgIDEyICsrCj4gIGRy
aXZlcnMvbWZkL01ha2VmaWxlICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9tZmQvbXQ2MzYwLWNv
cmUuYyAgfCA0MjUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5oIHwgMjQwICsrKysrKysrKysrKysrKysrKysr
KysrKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA2NzggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tZmQvbXQ2MzYwLWNvcmUuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLmgKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9u
ZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNl
Ym9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
