Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F6677B2D
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 20:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OsE9BmL1qMACt7hWG6h0/wFTE28lWBfrMlw2pIlIUnI=; b=BUAyYJxwGt7jRe9rCtaRifJ5E
	H52EbW1MoXbTjOuHw2AgiNM9zw2ztdXcCK5YBPPBaXgMi0o2fMS+omwnDA7zmyOz/J4d8ULzHN4WA
	AytvK5z2W6AoS/OB7z6Fq2iQy4X2YSTL/xPopeOzB6t7K6kFKKqHUPLGjrFH1qzpEGOMRvEXYVhis
	i7fIJJHFv/spNf/rU7Yg8KUUufy/T5iLX5P0GptWXJyT8/eFbTeD74GmUvfKN/YL4kddC9WGz0k/N
	W1BW0Sc3kDRRarNoQKL87VTKy3yZGGFviwpptuaszvO7jxVtq/3nE7rbd3VzZmKL8ruO0Ov2nN9LR
	qDkTXAHdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRf5-0004Hc-Sy; Sat, 27 Jul 2019 18:43:20 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRet-00048N-MB
 for linux-mediatek@lists.infradead.org; Sat, 27 Jul 2019 18:43:10 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id D39795FCC5;
 Sat, 27 Jul 2019 20:43:05 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="HW/M9LbC"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 833111D2CA97;
 Sat, 27 Jul 2019 20:43:05 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 833111D2CA97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1564252985;
 bh=M4uxwYyb5FmmRAX/V16eef77IJ7AQ2sKjRtYnUKv06I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HW/M9LbCYz0GumbzhG25ZGpzeP2ttrAHRVBHU9pAyFfeoRsobIDNRrUCjQeybZA5J
 pmYE4lgqj7uyHnkMoyM50lJ1iKZFweDrpy5zFjylk7q44ZZl6hbyLtgKpqkGVLZFlK
 CJf4T+iKpNBk6Q+mnRIfM1u/nJ8yqo855kLgs6NUandlnrMMhsaH6Bhl0qVIIqLW8n
 1955B/lpIXrfSX+KUkPyMJqxdE7xm6PLNICSJndhxs4/iNpTi2kBlASW2BF+RdNMNB
 f1mbehtUESrB2J6x4wu9G+oRO4hTg62xwRT9pyqgjz8QZI6TmD9UcUeURQ8iVOUTty
 f0SDIfCfmXVOQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 27 Jul 2019 18:43:05 +0000
Date: Sat, 27 Jul 2019 18:43:05 +0000
Message-ID: <20190727184305.Horde.vkqh7I-8IM_ifnVhhIU9l2c@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next 3/3] net: dsa: mt7530: Add support for port 5
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-4-opensource@vdorst.com>
 <20190726.140420.688330328284393964.davem@davemloft.net>
In-Reply-To: <20190726.140420.688330328284393964.davem@davemloft.net>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_114308_045460_C2746799 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OgoKPiBGcm9tOiBSZW7D
qSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4KPiBEYXRlOiBXZWQsIDI0IEp1bCAy
MDE5IDIxOjI1OjQ5ICswMjAwCj4KPj4gQEAgLTExNjcsNiArMTIzNiwxMCBAQCBtdDc1MzBfc2V0
dXAoc3RydWN0IGRzYV9zd2l0Y2ggKmRzKQo+PiAgCXUzMiBpZCwgdmFsOwo+PiAgCXN0cnVjdCBk
ZXZpY2Vfbm9kZSAqZG47Cj4+ICAJc3RydWN0IG10NzUzMF9kdW1teV9wb2xsIHA7Cj4+ICsJcGh5
X2ludGVyZmFjZV90IGludGVyZmFjZTsKPj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm1hY19ucDsK
Pj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKnBoeV9ub2RlOwo+PiArCWNvbnN0IF9fYmUzMiAqX2lk
Owo+CgpIaSBEYXZpZCwKCj4gUmV2ZXJzZSBjaHJpc3RtYXMgdHJlZSBoZXJlIHBsZWFzZS4KPgo+
IFRoYW5rIHlvdS4KCk9LLCBJIHNoYWxsIGNoYW5nZSB0aGF0LgpJIHNwaW4gYSBuZXcgdmVyc2lv
bi4KCkdyZWF0cywKClJlbsOpCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tZWRpYXRlawo=
