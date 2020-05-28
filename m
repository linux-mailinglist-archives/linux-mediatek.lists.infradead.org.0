Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458A01E62CA
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 15:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdogJXhrUcy9apPEYH4SnkBRi/eGa7XYm/dN5d8fwI0=; b=J0MO2ilojg3/Ot
	yhGQAAJijgBFYvVe2T9Ki8xwkvy29ygvDkbIsP6loS8CZbqhEe8GlXBZpACfwIOt5Aaqe9EIpQsKH
	cSYfobIairsMDpgtzEm6qF5w49WQKTqNCTy5vSVjAjjBcMUBk65A1tWM2o4/qEW65o34O8URmJH9j
	bsHGa6nfISdzwPE8hGy2f28MDx9saRMV8qSPl7mh501D7ja/ne0D/0yi9RQiH4jLC70lKkzBnxGdg
	Uw2N3NybvcK93G+aNNk0eMWoBGkgcghMY6C31J2jT308VKahWjLtBNAnnhHKifr2aAe3fM6k9aSr4
	BW/wDoUnB6vX8gvk9kGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIwi-0003fI-5L; Thu, 28 May 2020 13:51:44 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIwB-0002Za-JU
 for linux-mediatek@lists.infradead.org; Thu, 28 May 2020 13:51:14 +0000
Received: by mail-qv1-xf43.google.com with SMTP id fb16so12928961qvb.5
 for <linux-mediatek@lists.infradead.org>; Thu, 28 May 2020 06:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3Rh8K4+22O+QrskrmwrNTFBFh5vNosv/sr65KhuOYxw=;
 b=DPWNkC3TUmnqZbbYEmi599uf3WJwosa8MGshm0VnwLkNfwtiOfu63b+H7co25zOIei
 /PFLTBpk9KSDfT2KHg43sSZUGFDhM/Eusszyg8Vv+bhw1u5EKr819Kz0DbE+CegMJh0f
 w0L4heEofgU4koOwKyena9NVSqmdhHsetq1AiOAnOY4to4U+fFQcSsuyKItYt7e0hGpZ
 ZjPkjDF1i1tqA5bjWD20luWin4AwmRIreRgFjGZ7FrbOg5gXHP3PyTklpEiLRLiW4HTN
 qilde4CsbWe+FEVPmCjq+Ads2DQV8fXNlAMQ3UD9MCF3bBayQ3MRIWh9WXhLv6+LmZk+
 Wt6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3Rh8K4+22O+QrskrmwrNTFBFh5vNosv/sr65KhuOYxw=;
 b=j8NhdKYb89kmF6qR+2pnMo8u5iUXOVYjybc0wuKyQD1IKplY88c1ma9nB7H/j7piVO
 Zysclj7m1EiC0yiJBemWS+r8ibA/ZE/i4hx2jRVHX+skMQpXNv/gjtN2i894wStfkVeS
 7BxZd2ukb0laQvEDHTJCkGCvfHpxjzNaKt+SKh9lXU15FEFvrJ9oQhnlzIPqSl0sp2Fe
 Ezw/+L7rWwLOWQSGZKyVjK7RKqBfpH7EHqtiYXN68W99K0GOuB4y/EBtcNHRtq+WwYDt
 mf3uWCgWUJPBjjCUakjf/MAQ+7Ff9iluRDEFDzwbRHvqwcqSccGmU9V02AMh6V8ftHyZ
 U0BQ==
X-Gm-Message-State: AOAM533Q9ihCEELkylcMV5+gGocJHGYu66xdkvOnphy1kvKMbjs+4z6Y
 psxdDMk86S9xTpnTl9nQQ0E9HmYGEb4+IUPKgiQadg==
X-Google-Smtp-Source: ABdhPJwwhNNg2jX7o0MVbONScnOgv1IrK2/t9ZTXd2p5X6gY80YlNgs/fudAJIX62UrVDXZuWcm7dMxbLlnnFexePB4=
X-Received: by 2002:a0c:fb4b:: with SMTP id b11mr3078897qvq.96.1590673869956; 
 Thu, 28 May 2020 06:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200528132743.9221-1-brgl@bgdev.pl>
In-Reply-To: <20200528132743.9221-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 28 May 2020 15:50:58 +0200
Message-ID: <CAMpxmJU6=UfzMjB-zKV9ULPUdLe_qUr+zSwwrc1VXKv6HN6BEQ@mail.gmail.com>
Subject: Re: [PATCH net-next] dt-bindings: net: rename the bindings document
 for MediaTek STAR MAC
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_065111_723936_0B32B31A 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Y3p3LiwgMjggbWFqIDIwMjAgbyAxNToyNyBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2
LnBsPiBuYXBpc2HFgihhKToKPgo+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pl
d3NraUBiYXlsaWJyZS5jb20+Cj4KPiBUaGUgZHJpdmVyIGl0c2VsZiB3YXMgcmVuYW1lZCBiZWZv
cmUgZ2V0dGluZyBtZXJnZWQgaW50byBtYWlubGluZSwgYnV0Cj4gdGhlIGJpbmRpbmcgZG9jdW1l
bnQga2VwdCB0aGUgb2xkIG5hbWUuIFRoaXMgbWFrZXMgYm90aCBuYW1lcyBjb25zaXN0ZW50Lgo+
Cj4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxp
YnJlLmNvbT4KPiAtLS0KPiAgLi4uL25ldC97bWVkaWF0ZWssZXRoLW1hYy55YW1sID0+IG1lZGlh
dGVrLHN0YXItZW1hYy55YW1sfSAgICAgICAgfCAwCj4gIDEgZmlsZSBjaGFuZ2VkLCAwIGluc2Vy
dGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCj4gIHJlbmFtZSBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L3ttZWRpYXRlayxldGgtbWFjLnlhbWwgPT4gbWVkaWF0ZWssc3Rhci1l
bWFjLnlhbWx9ICgxMDAlKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvbWVkaWF0ZWssZXRoLW1hYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC9tZWRpYXRlayxzdGFyLWVtYWMueWFtbAo+IHNpbWlsYXJpdHkg
aW5kZXggMTAwJQo+IHJlbmFtZSBmcm9tIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvbWVkaWF0ZWssZXRoLW1hYy55YW1sCj4gcmVuYW1lIHRvIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9uZXQvbWVkaWF0ZWssc3Rhci1lbWFjLnlhbWwKPiAtLQo+IDIuMjYu
MQo+CgotRVRPT0VBUkxZIERhdmlkIHBsZWFzZSBkb24ndCBhcHBseSB0aGlzIC0gdGhlIGlkIGZp
ZWxkIG5lZWRzIHRvIGJlCnVwZGF0ZWQgdG9vLiBJJ2xsIHNlbmQgYSB2Mi4KCkJhcnRvc3oKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlh
dGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
