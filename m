Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAEFCBEFE
	for <lists+linux-mediatek@lfdr.de>; Fri,  4 Oct 2019 17:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLxPysITzA+pqMR2U64xrjHJmPxeq9DMJy1oDP/oRDc=; b=gA1voFPAwApORO
	UqMEYUf4ed24U3J1tGnaLtn7Nh19weNe7xC6X7C7VdnejDI8a/icjdzjh5MxH2t9TlwXXmZo7Ad7x
	6S3Ke/FLXprJRCOTYspRJC4UjpduSj0iHUa1ZOQqspu8iPuyC27tvD8hTem7o/50uUwTQfkQisySW
	9nFgkzSplQYS4L3uaUh7uloqoZs8Fv4ygadbKzE5IUw+04nQ/WPzpYxE+mYogRiPYt/TYdzHnpSxG
	s3F+3LAFSbYqDpwbdOWOpRlTwRfBSXODvBfpQuSYfGDX+41mEYqjDDNrsrf9jlYl+fJ/ND6sAD5O/
	hg6NNNxh2yTKV2hxddeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPNJ-0002bl-Nk; Fri, 04 Oct 2019 15:20:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPNE-0001wk-8a
 for linux-mediatek@lists.infradead.org; Fri, 04 Oct 2019 15:20:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id i16so6249794wmd.3
 for <linux-mediatek@lists.infradead.org>; Fri, 04 Oct 2019 08:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bDywciZgx2XBGKysVl4djWbACpcmiGhqyGWzjzvget0=;
 b=wG0VPxddvftgOPz6T+sh3Kvv8RV2sb78no+PMklHkJL91sU4fZPTyyaMJ3b31wBzej
 VS5o5TugsO5A4Zgn99Csy0O4H3yFh3IkiDvOl4jyYUXKx8wfkGUO+R6E1ryfnDowdWGb
 5QgUfu5g4roLTjGyhmh/9FLlGNFfzyJKcy5ZlWIEMWnOVotjdnlSw9IhPXCwD3W2mlCh
 B++WBkCAtDVLHGQfARaI9j3d9vp5e2IExBnXFh3eiWWpUrpdnHal7b2VvQ53/IyGZqu2
 xNlMyHy8WfjkwiR3ib0uLFl1PHZNmq6paAbCVWGRvaSTkybjLNiGrG9OshVHYsonJVli
 2SNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bDywciZgx2XBGKysVl4djWbACpcmiGhqyGWzjzvget0=;
 b=oDTeNhUt4Tb/MZ1QJexoQiMkvI2o82VnCK5s7FCrx6RORrWE+jeWytdb7R+FRsa9K6
 5rmhGhRgdMotXYeJ2zIuWyezEWJmo+fZS9sI2nNIjN2mSmYIhVM3Gl0IbOu4cUA9/tIf
 x6LFVxrh7YKxyFWn+Ar6W6cTPntHE624FyKPtg/S0c1GrHRDVjYFWDt2/JLgG7qHqoBT
 kgEshjYWb8D/tnn+0f579inH6v1q6tGN2DW91zrdfs3tjtfhshrHgX7TZayvOqLRW96n
 4yU6+6Tb6QH+R3OFpjWcO5ffRjf+nxvTdMcW5qXvOWVq977gGzuYN54pBfNGTPG13ENS
 c3Sw==
X-Gm-Message-State: APjAAAV/drTesmqElwUHMYhh1TzUET6dm3AqvdKy/GksH76J89sxmb5S
 npWNzUOoc6qI6qBP+yz7yVw/Og==
X-Google-Smtp-Source: APXvYqxyD6R17KEDZ64D+fBYHZNEsDDN6y+McbrzItzC/6eM7CB0KbH4SCq9b8P2XLWzF4La+9P++A==
X-Received: by 2002:a1c:a853:: with SMTP id r80mr11007913wme.140.1570202402906; 
 Fri, 04 Oct 2019 08:20:02 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id y8sm7689041wrm.64.2019.10.04.08.20.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 08:20:02 -0700 (PDT)
Date: Fri, 4 Oct 2019 16:20:01 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
Message-ID: <20191004152001.GS18429@dell>
References: <20191003185323.24646-1-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003185323.24646-1-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_082004_320330_6708CE2A 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVGh1LCAwMyBPY3QgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gUGFydCAzIGZy
b20gdGhpcyBzZXJpZXMgWzFdIHdhcyBub3QgbWVyZ2VkIGR1ZSB0byB3cm9uZyBzcGxpdHRpbmcK
PiBhbmQgYnJlYWtzIG10NjMyMyBwbWljIG9uIGJhbmFuYXBpLXIyCj4gCj4gZG1lc2cgcHJpbnRz
IHRoaXMgbGluZSBhbmQgYXQgbGVhc3Qgc3dpdGNoIGlzIG5vdCBpbml0aWFsaXplZCBvbiBiYW5h
bmFwaS1yMgo+IAo+IG10NjM5NyAxMDAwZDAwMC5wd3JhcDptdDYzMjM6IHVuc3VwcG9ydGVkIGNo
aXA6IDB4MAo+IAo+IHRoaXMgcGF0Y2ggY29udGFpbnMgb25seSB0aGUgcHJvYmUtY2hhbmdlcyBh
bmQgY2hpcF9kYXRhIHN0cnVjdHMKPiBmcm9tIG9yaWdpbmFsIHBhcnQgMyBieSBIc2luLUhzaXVu
ZyBXYW5nCj4gCj4gRml4ZXM6IGE0ODcyZTgwY2U3ZDJhMTg0NDMyODE3NmRiZjI3OWQwYTJiODli
ZGIgbWZkOiBtdDYzOTc6IEV4dHJhY3QgSVJRIHJlbGF0ZWQgY29kZSBmcm9tIGNvcmUgZHJpdmVy
Cj4gCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1tZWRp
YXRlay9saXN0Lz9zZXJpZXM9MTY0MTU1Cj4gCj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV3VuZGVy
bGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5
Ny1jb3JlLmMgfCA2NCArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jIGIvZHJpdmVycy9tZmQvbXQ2Mzk3
LWNvcmUuYwo+IGluZGV4IDMxMGRhZTI2ZGRmZi4uYjJjMzI1ZWFkMWM4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMKPiArKysgYi9kcml2ZXJzL21mZC9tdDYzOTctY29y
ZS5jCj4gQEAgLTEyOSwxMSArMTI5LDI3IEBAIHN0YXRpYyBpbnQgbXQ2Mzk3X2lycV9yZXN1bWUo
c3RydWN0IGRldmljZSAqZGV2KQo+ICBzdGF0aWMgU0lNUExFX0RFVl9QTV9PUFMobXQ2Mzk3X3Bt
X29wcywgbXQ2Mzk3X2lycV9zdXNwZW5kLAo+ICAJCQltdDYzOTdfaXJxX3Jlc3VtZSk7Cj4gIAo+
ICtzdHJ1Y3QgY2hpcF9kYXRhIHsKPiArCXUzMiBjaWRfYWRkcjsKPiArCXUzMiBjaWRfc2hpZnQ7
Cj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNoaXBfZGF0YSBtdDYzMjNfY29yZSA9
IHsKPiArCS5jaWRfYWRkciA9IE1UNjMyM19DSUQsCj4gKwkuY2lkX3NoaWZ0ID0gMCwKPiArfTsK
PiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2hpcF9kYXRhIG10NjM5N19jb3JlID0gewo+ICsJ
LmNpZF9hZGRyID0gTVQ2Mzk3X0NJRCwKPiArCS5jaWRfc2hpZnQgPSAwLAo+ICt9OwoKV2lsbCB0
aGVyZSBiZSBvdGhlciBkZXZpY2VzIHdoaWNoIGhhdmUgYSAhMCBDSUQgc2hpZnQ/CgotLSAKTGVl
IEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzog
RmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlh
dGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
