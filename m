Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4864E49772
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 04:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVuEoibA6nWH2oRmxqFAV2HkEb9ls5QKbcqZpSD80f8=; b=nnH/6CQ7TJGp2w
	DFxUaWKumDjo/5aVo4+AuvA73TfVQVHU8DBXAtvWX4vss9P7akv+BRJKZkPsP3srQL3k/SLcwFufX
	Omh/rHmQiCHr/ywZ/1C+sy2ndRLfUXA7YDXlG+6xKFUtjWd1DsoKCoZtIsXGGaQ5T/0XZnHz8vyVS
	H4MTBkp5rSGipq1Kh+jRU3sIt3LG1bqCKnsFqKmXxpcbbtEcm0jKFB6Vz+mVJ8FiOwnvKWdeM+qCF
	D3jc1yCTGoeZGkccsmNcWPUspAttsnimuh8F07296Y+bsjp7Gfa9gmEO46inY17nPNcxeqJFsQofT
	I61dn+u7y7x82Ui37pVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd3kY-0004Wd-NE; Tue, 18 Jun 2019 02:21:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd3kV-0004WI-OA
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 02:21:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so6690484pff.8
 for <linux-mediatek@lists.infradead.org>; Mon, 17 Jun 2019 19:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NsjjamiHywVJwuDhs9qzFwONr1IfbljCo22+ABIa6RU=;
 b=Lb7ZYZ8eAoLQjcgzpTdcuHyv08gyQmXEiJs+GSflPaSlkduYpX1FOr9IF5xUFjAPLB
 D9aRmIOGcJ3FAvubJxHTGk/UWphbLY2ZCSTCdGVu9llIOsg0izHUuXMV/oYGecUvYyqA
 fubTyz7H7qI4LEDHpCw6mzRUSXPEzh6T2TdOOks//po6DMSLVMdsPl1yF0djFW2bDgT6
 qxsp9Xo3WBgZ7eMWxANiAJZJFeWFnXjgVA1KEovkCpbAbzc137v5xLdu0Bvnbxjo7qjs
 GVgpFbTL7GbBqvsyGRCw1nDmJvPsZHHs+zzMFwmd34PLpSBSJ0yIlE8+Y5uX7GSdAtCT
 A7Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NsjjamiHywVJwuDhs9qzFwONr1IfbljCo22+ABIa6RU=;
 b=IK9vOXFSMF4e+u4l2iLkZQBdj6VOnuBVlg32rZGqOrY7BAGqTx3q+4qYfv/VjrgEW9
 ZVBEfE85Ke0bBlZh45ooMyKt6p4dns1a3qq7ktpc5L1YCehqMf/F+HTIOFHSH+la1/iT
 aZ0UXgC1ogZmcGmBJEPeW5lFsASzfeFkuDTD1tBZoEfRBYW45lhny1IOAsjZk6IggwUl
 q/ZJAqcxRN+vcqtoqD17Hdx4gUlpOWxXK7NuFddz+SGu0lTEVnrxgUWFV4f5Si9/S9MA
 n15+gTcpQLuceV1R4XkMNFbKNtMpHowL1/T7V25SVGQcKpMirolyZVMsxIZSTl36UL/K
 E0WQ==
X-Gm-Message-State: APjAAAWp1YErYJnQvxhv2wmqY6hW6sdduxC5UkYuyFoP21BAYRSVHGUe
 i3zaWRPBDXDSRiGcpv8ABYY=
X-Google-Smtp-Source: APXvYqzS2TPeZ0VyOHWynWIii1uHUY9Z5G8S3f8YM40HbYBfNx/Pyt9a6VqMWFukTK3R1G4G/+exyQ==
X-Received: by 2002:a63:6a47:: with SMTP id f68mr374781pgc.230.1560824486685; 
 Mon, 17 Jun 2019 19:21:26 -0700 (PDT)
Received: from [10.230.1.150] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id r7sm19780617pfl.134.2019.06.17.19.21.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 19:21:25 -0700 (PDT)
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
To: Andrew Lunn <andrew@lunn.ch>, =?UTF-8?Q?Ren=c3=a9_van_Dorst?=
 <opensource@vdorst.com>
References: <20190616182010.18778-1-opensource@vdorst.com>
 <20190617140223.GC25211@lunn.ch>
 <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
 <20190617214428.GO17551@lunn.ch>
 <20190617232004.Horde.mAVymZdeb9Jjf29W2PeOggU@www.vdorst.com>
 <20190618015309.GA18088@lunn.ch>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <7f2fc770-1787-72f8-b91d-e2b12e74d39e@gmail.com>
Date: Mon, 17 Jun 2019 19:21:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190618015309.GA18088@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_192127_791957_2AA34769 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mips@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 linux-mediatek@lists.infradead.org, john@phrozen.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

CgpPbiA2LzE3LzIwMTkgNjo1MyBQTSwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4+IEJ5IGFkZGluZyBz
b21lIGV4dHJhIHNwZWVkIHN0YXRlcyBpbiB0aGUgY29kZSBpdCBzZWVtcyB0byB3b3JrLgo+Pgo+
PiArICAgICAgICAgICAgICAgaWYgKHN0YXRlLT5zcGVlZCA9PSAxMjAwKQo+PiArICAgICAgICAg
ICAgICAgICAgICAgICBtY3IgfD0gUE1DUl9GT1JDRV9TUEVFRF8xMDAwOwo+IAo+IEhpIFJlbsOp
Cj4gCj4gSXMgVFJHTUlJIGFsd2F5cyAxLjJHPyBPciBjYW4geW91IHNldCBpdCB0byAxMDAwIG9y
IDEyMDA/IFRoaXMKPiBQTUNSX0ZPUkNFX1NQRUVEXzEwMDAgZmVlbHMgd3JvbmcuCgpJdCBpcyBu
b3QgdW5jb21tb24gdG8gaGF2ZSB0byAiZm9yY2UiIDFHIHRvIGdldCBhIGhpZ2hlciBzcGVlZCwg
dGhlcmUgaXMKc29tZXRoaW5nIHNpbWlsYXIgd2l0aCBCNTMgc3dpdGNoZXMgY29uZmlndXJpbmcg
dGhlIENQVSBwb3J0cyBhdCAyR0Ivc2VjCihwcm9wcmlldGFyeSB0b28gYW5kIG5vdCBzdGFuZGFy
ZGl6ZWQgZWl0aGVyKS4KCj4gCj4+PiBXZSBjb3VsZCBjb25zaWRlciBhZGRpbmcgMTIwMEJhc2VU
L0Z1bGw/Cj4+Cj4+IEkgZG9uJ3QgaGF2ZSBhbnkgb3BpbmlvbiBhYm91dCB0aGlzLgo+PiBJdCBp
cyBncmVhdCB0aGF0IGl0IHNob3dzIG5pY2VseSBpbiBldGh0b29sIGJ1dCBJIHRoaW5rIHN1cHBv
cnRpbmcgbW9yZQo+PiBzcGVlZHMgaW4gcGh5X3NwZWVkX3RvX3N0cigpIGlzIGVub3VnaC4KPj4K
Pj4gQWxzbyB5b3UgbWF5IHdhbnQgdG8gYWRkIG90aGVyIFNPQ3MgdHJnbWlpIHJhbmdlcyB0b286
Cj4+IC0gMTIwMEJhc2VUL0Z1bGwgZm9yIG10NzYyMSBvbmx5Cj4+IC0gMjAwMEJhc2VUL0Z1bGwg
Zm9yIG10NzYyMyBhbmQgbXQ3NjgzCj4+IC0gMjYwMEJhc2VUL0Z1bGwgZm9yIG10NzYyMyBvbmx5
Cj4gCj4gQXJlIHRoZXNlIHN0YW5kYXJkaXNlZCBpbiBhbnkgd2F5PyBPciBNVEsgcHJvcHJpZXRh
cnk/ICBBbHNvLCBpcyB0aGUgVAo+IGluIEJhc2VUIGNvcnJlY3Q/IFRoZXNlIHNwZWVkcyB3b3Jr
IG92ZXIgY29wcGVyIGNhYmxlcz8gT3Igc2hvdWxkIHdlCj4gYmUgdGFsa2luZyBhYm91dCAxMjAw
QmFzZUtYPwoKTG9va3MgbGlrZSB0aGlzIGlzIE1USyBwcm9wcmlldGFyeToKCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1tZWRpYXRlay8yMDE2LVNlcHRlbWJlci8w
MDcwODMuaHRtbApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzkzNDExMjkvCi0t
IApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW1lZGlhdGVrCg==
