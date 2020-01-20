Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007FF1425FC
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Jan 2020 09:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eudpA4ambjQQKWQjgspltSllRCG7lrUEL6LHI0EZXfw=; b=g9O999yLqIBsWK
	RIPGL4EVAcm9yQ39G3TeZJljlHvPBipMBmWasM5kYCQifHYvCqLzT8jnGklOLLWnNF5ze38UgRztZ
	b1z8iuRK7RkJhlyz+pSrhCB7NgQ/KMrRhl7N09q2PbFd9tBlMShDmPk7OsusTkfOVTj4+vjwW/DPt
	t3vzmv+0Gh/lxxgTfoTxfnxeHFfbAVcMgxWCFJ+faGR2fwswMaupJZf15/zJ59Hnn6oufsgP3xBPr
	FDfRtyS4RwNcWN6qK5bGT9YMJ8PfonxWOWDwpBk360MOIcLi2ZnG1FAm7MlzFDNIygFPkrF/qYxVo
	UmKTYXwU+J7CnIj8GkBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSex-0000Wh-Ch; Mon, 20 Jan 2020 08:43:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSer-0000VE-4o
 for linux-mediatek@lists.infradead.org; Mon, 20 Jan 2020 08:43:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id j42so28503192wrj.12
 for <linux-mediatek@lists.infradead.org>; Mon, 20 Jan 2020 00:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=gifHuIbCmX+R9NDRnITZu82J8BFsOQKVLbmsTjc0e3M=;
 b=musV59sR94nIPfcgLIQtZwLs7/Yv/sT8+U7PToHVQCNBIcL9rnHYPKzK/o72OFGbox
 jC5rDARSf8dVbjGdy1UbybpHRvHUWMVEnAJWJfY/VzyoM70ysvSBCWqNMlraAkrJ8eGO
 UFcbGHGVg2C7GbWXAWgdzcBbK80kqSgtqMC9mfwfNsUffbNzqADCqCqSn9oHEnxXyk2n
 PxwYRMqYfoafCx/frJnKYxhPj/KO5Gwc3r4Jg9XBiSpOfSupaGCRbAYKNcSs1kmUiGUD
 yuAit4UfcbMIbIdFYnIZfY59dbcgkaoQKR1W+VD8uNGNVebbWne7xwRuhiywuw78zJNQ
 S+mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=gifHuIbCmX+R9NDRnITZu82J8BFsOQKVLbmsTjc0e3M=;
 b=k8N/YcpaHCeiX3YgOosbf4vwCGo1M2ckgATt2QI7RW7TqpxUHPZ65MxM/yemFF9lQ/
 kokcyEJfsW5bS2lxciROOKMl7dAo0oB5uRnTcByDdffZk7tLOvL6/as/eJfWJVOE5wcv
 cksecQOmIivBD0hOPI5fNCR3PZdtfFW1YK2Myz5ATz2IndwO2wTZL7rmIl/RTt1NXcW+
 dRURprLzXhcm+rzD9SV8PZBm+s+g3E8VMHSdBScf9+SxZ539ziahMhrDRlfALL5lKCD7
 lOEezWP1Ub0KvmAZwNA0Lo8J2AI+ZviSQinTBmwwf7qxijb3j/RX87CSvggV0xywD6hT
 MoRA==
X-Gm-Message-State: APjAAAV6YOKleFzWPpLHpAG+NQW0bRXFSssdPji0my/j+D1ZtTVVCHMg
 j3lzxHhh8yCoxsEyeq6Lf4hFCw==
X-Google-Smtp-Source: APXvYqy+rWDfjjYcUJ9qyGjk1MjXcoc+KJXJZXfExAHNyyprH+X8jUuldYdSqr6JOsriaYepWzKiNA==
X-Received: by 2002:adf:df03:: with SMTP id y3mr17198094wrl.260.1579509819402; 
 Mon, 20 Jan 2020 00:43:39 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id n16sm47472001wro.88.2020.01.20.00.43.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 00:43:38 -0800 (PST)
Date: Mon, 20 Jan 2020 08:43:55 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
Message-ID: <20200120084355.GW15507@dell>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_004341_217501_93F0E405 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBKYW4gMjAyMCwgV2VuIFN1IHdyb3RlOgoKPiBGcm9tOiBXZW4gU3UgPHdlbi5z
dUBtZWRpYXRlay5jb20+Cj4gCj4gYWRkIGR0LWJpbmRpbmcgZG9jdW1lbnQgZm9yIE1lZGlhVGVr
IE1UNjM1OSBQTUlDCj4gCj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5v
cmc+Cj4gU2lnbmVkLW9mZi1ieTogV2VuIFN1IDx3ZW4uc3VAbWVkaWF0ZWsuY29tPgoKVGhlc2Ug
YXJlIGluIHRoZSB3cm9uZyBvcmRlci4gIFRhZ3Mgc2hvdWxkIGRlc2NyaWJlIGhpc3RvcnksIHRo
dXMKc2hvdWxkIGJlIGluIGNocm9ub2xvZ2ljYWwgb3JkZXIuICBGb3IgaW5zdGFuY2UsIHRoZSBv
cmRlcmluZyB5b3UgdXNlZApkZXNjcmliZXMgUm9iIHJldmlld2luZyB0aGUgcGF0Y2ggKmJlZm9y
ZSogeW91IHNlbnQgaXQsIHdoaWNoIGlzIG5vdApwb3NzaWJsZS4KCj4gLS0tCj4gIC4uLi9iaW5k
aW5ncy9yZWd1bGF0b3IvbXQ2MzU5LXJlZ3VsYXRvci50eHQgICAgICAgIHwgNTkgKysrKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRv
ci9tdDYzNTktcmVndWxhdG9yLnR4dAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1l
ZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
