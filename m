Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432C01DE11C
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 09:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgDbvB9i5iO//T+rEAQP/5qsKRR8OukHr0jJCaSiA6g=; b=LmarSf9fhOzA9S
	xzDZqgozpaT72gs2vSU+59znG4bo5BuUg/GEEXY96uLCqAikCXZXJJ8tVF2V3+XgIniPuH9iJPFor
	v19DC5MpJLMajyliv2rw+hRriBeJSMWgbbFNQSZmtVeriTtLvkIvZurs1zErUXEutG8GoHsI6hbdk
	ou6Z3MWBWMM/OnPyR2rl+WbhQUwa4vTQ/CjvkPnMKOJA1fOnGYnwP1ZuBNX/x9vQ6E2o3Q2k034k8
	XyuykrMPyf0cOMcxG72AUSMU4Z3PwfR5YQL/HxuhQ5HN+tKDSfvQjDw6VT/1B13ZyBt+SkP639tdQ
	x30TuZWNXPEjNoT7frdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2Fq-0005er-AN; Fri, 22 May 2020 07:38:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2Fc-0005Ul-28
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 07:37:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id l18so9164636wrn.6
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 00:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=OoldvHVpRxJWz04Wv0lGmaRnV3/coogwvzF6ciZCusk=;
 b=QWQc1utngkxkmgE3Q2u4PTwJqopYWiCbwEsGAWquR85cj0X8RjK1xI8yGXqbI7jcyZ
 A7I2kbn65YVRKjJSF/AFeyA4vxnoWX09E1TmCoJFPJnDI1loZx5j4NMh70Df8bXEz0ue
 vTJx15lf1ZYaGAvc4aMYciz4SovxxdQAWHTuEm2oHIXADiPVf3cSpVfQGhuoA5CDtx/S
 OgsJgjynh6wi3beJ5Oa85dFoie+UnAIF5cMSTj2A3m8d5UTVPLX/Od6NZ47RLKMKD49l
 be+/5eFuDjHwPfJ4doYfPk/M5s6VjxS1iBiYXGnfc85uZIUTLhi+4N/SNM+uWfGAe8rj
 geyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=OoldvHVpRxJWz04Wv0lGmaRnV3/coogwvzF6ciZCusk=;
 b=fmxYkFoIFW8b2dCywgIqyPiaN4WjJalQwPS58IUsFosrmXNDwhPC7eUlpQA+nJLwkg
 dOR8H5gTV+RatoMtMrzSZrw7NMp7H9lJv4fZab1xLUkRbsl6NzqA7KN2Tc1eNRKgtrqe
 WSdxooVlyOKwJP0g8xNlRx2PuCwGEJLMpHN1ZGVum4+jc37gmeKyWHvIQ3w+uO1Iwsq9
 msZDC4QPzZ8xnHZCpRLdUEBvTaZtDMXVPMGdHa0+yzOCyUowZv8lAxUdZlUN0mIFgZyy
 rh5NNH/J4f2K8Ou4cO/s9jsnBWzzkYxo92dbenS6wTU6ZL4W41dFHMCjTlKoyTg881VL
 faMg==
X-Gm-Message-State: AOAM532ztR+4hjFIDhnwqcUfV0YwVdpjKaMEDf6vRsmq6KGGVycta/rf
 E8TGgUNbhat7OxvOpka3DE92pg==
X-Google-Smtp-Source: ABdhPJy+uDhQ+H8wIBCHXhrT0yMPXls7Yet6TUSGGzWvvHeOOpFgwvBPP6gqkrxYEzHQ+kF+ppxoFA==
X-Received: by 2002:adf:e441:: with SMTP id t1mr2452196wrm.347.1590133070748; 
 Fri, 22 May 2020 00:37:50 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id y8sm82930wmc.37.2020.05.22.00.37.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 00:37:50 -0700 (PDT)
Date: Fri, 22 May 2020 08:37:48 +0100
From: Lee Jones <lee.jones@linaro.org>
To: matthias.bgg@kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: mediatek: Add MT6397 Pin Controller
Message-ID: <20200522073748.GQ271301@dell>
References: <20200110145952.9720-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110145952.9720-1-matthias.bgg@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_003752_144275_222E4957 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gRnJpLCAxMCBKYW4gMjAyMCwgbWF0dGhpYXMuYmdnQGtlcm5lbC5vcmcgd3JvdGU6Cgo+IEZy
b206IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4gCj4gVGhlIE1U
NjM5NyBtZmQgaW5jbHVkZXMgYSBwaW4gY29udHJvbGxlci4gQWRkIGJpbmRpbmcKPiBhIGRlc2Ny
aXB0aW9uIGZvciBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0
aGlhcy5iZ2dAZ21haWwuY29tPgo+IAo+IC0tLQo+IAo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL210NjM5Ny50eHQgfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKykKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaW
r10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW1lZGlhdGVrCg==
