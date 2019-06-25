Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F2D5574F
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 20:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjspSIloJb4bu2GawAIHfS+HTOB/3QChAI7tvLxCvWw=; b=WRcDBO0aAK6SBf
	/FJyMK2md9HLiBPWnaoMRuznFK7mPpu7tPHQqmfcy5XpZdcynPV3CYvVHBxqxBwVWDM6y1CN3WcPY
	R3h5kX2vSVWeY4EoNpaYhnoCzuSXLPOOA2aGXh7Fe5bs5qzfgkT6V5F2dgociP6Uh8lnvI0+/jwz5
	s//2uxU/JHlQ2Q6souGlsUdmPq/x1ptrGEiorkqbHaAgnIKj7ct15StAEqzbT1GoJCvWC9e2xHNF3
	KChQfoBrI5ARnXHEQutIQ67b4iXM3ixAU79ukYmoaC32aU+FUIDW8KmFqVs//6ya5KWdkuw+60Q6c
	CT93ltr7S0c8j8qwDf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfqLX-0004UT-FF; Tue, 25 Jun 2019 18:39:11 +0000
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfqLT-0004U1-0x
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 18:39:08 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 6BC52164DDB;
 Tue, 25 Jun 2019 14:39:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=omq51xRrnfan
 iedV32HSyjTCy18=; b=EZksBo/Eej8QoKcgshBdiD7LYecHUJ60sex+tuf1Jmy3
 viEd+v+hFFq8U3pT7n+xLbbORIHzrQOCQd1LgidVxcHsSgHvgERxGlUfHf9OJFB+
 WH37f4KpE1WOvFrRSeSlSjyEqzkz3udaphDj/JeEsD5OB0v0iclJmvnGoZYe/Sk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=QL1BYc
 6HR0WUHE68tEIwsYQk903c0dGGvSSnfkUF+rn14whbLLF7PfANsaLW0K5RjS1wn4
 nIP0Y19Max3J03fCAv16tkOvavO3Q1/3I021Zky+ZrabY/tAQCYgfo1seaQyIO68
 xaUiOU5Szc3zfXVHPnLwUGtxDdQ+bbxgZCBgM=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 61B27164DDA;
 Tue, 25 Jun 2019 14:39:05 -0400 (EDT)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 51C72164DD9;
 Tue, 25 Jun 2019 14:39:04 -0400 (EDT)
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
Date: Tue, 25 Jun 2019 13:37:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
Content-Language: en-US
X-Pobox-Relay-ID: 8248C57E-9778-11E9-9FC4-72EEE64BB12D-06139138!pb-smtp2.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_113907_231416_AE6453BD 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 vivien.didelot@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGVsbG8sCgpBbHRob3VnaCBJJ20gbmV3IHRvIHRoZSBlbnRpcmUgRXRoZXJuZXQgLyAqTUlJIHN1
YnN5c3RlbSBhbmQgSSBoYXZlbid0CnRvdWNoZWQgRFNBIHlldCwgSSd2ZSByZWNlbnRseSBoYWQg
dG8gYWRkIHNvbWUgb2YgdGhpcyBmdW5jdGlvbmFsaXR5IHRvCnRoZSBvbGRlciBPcGVuV1JUIGRy
aXZlcnMgZm9yIHN3Y29uZmlnIGNvbnRyb2wgb3ZlciB0aGUgcG9ydHMuwqAgUmVuw6ksIGRvCnlv
dSBoYXZlIGFuIGFjdHVhbCBkYXRhc2hlZXQgb3IgcHJvZ3JhbW1pbmcgZ3VpZGUgZm9yIHRoZSBt
dDc1MzA/wqAgSQpvbmx5IGhhdmUgb25lIGZvciB0aGUgbXQ3NjIwLgoKCk9uIDYvMjUvMTkgNzox
MCBBTSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IG1hY19saW5rXyoo
KS4KPgo+Pj4+ICsgICAgICAgICAgICBpZiAoc3RhdGUtPnBhdXNlIHx8IHBoeWxpbmtfdGVzdChz
dGF0ZS0+YWR2ZXJ0aXNpbmcsIFBhdXNlKSkKPj4+PiArICAgICAgICAgICAgICAgICAgICBtY3Ig
fD0gUE1DUl9UWF9GQ19FTiB8IFBNQ1JfUlhfRkNfRU47Cj4+Pj4gKyAgICAgICAgICAgIGlmIChz
dGF0ZS0+cGF1c2UgJiBNTE9fUEFVU0VfVFgpCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgbWNy
IHw9IFBNQ1JfVFhfRkNfRU47Cj4+Pj4gKyAgICAgICAgICAgIGlmIChzdGF0ZS0+cGF1c2UgJiBN
TE9fUEFVU0VfUlgpCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgbWNyIHw9IFBNQ1JfUlhfRkNf
RU47Cj4+PiBUaGlzIGlzIGNsZWFybHkgd3JvbmcgLSBpZiBhbnkgYml0IGluIHN0YXRlLT5wYXVz
ZSBpcyBzZXQsIHRoZW4gd2UKPj4+IGVuZCB1cCB3aXRoIGJvdGggUE1DUl9UWF9GQ19FTiB8IFBN
Q1JfUlhfRkNfRU4gc2V0LiAgSWYgd2UgaGF2ZSBQYXVzZQo+Pj4gUGF1c2Ugc2V0IGluIHRoZSBh
ZHZlcnRpc2luZyBtYXNrLCB0aGVuIGJvdGggYXJlIHNldC4gIFRoaXMgZG9lc24ndAo+Pj4gc2Vl
bSByaWdodCAtIGFyZSB0aGVzZSBiaXRzIHNldHRpbmcgdGhlIGFkdmVydGlzZW1lbnQsIG9yIGFy
ZSB0aGV5Cj4+PiB0ZWxsaW5nIHRoZSBNQUMgdG8gdXNlIGZsb3cgY29udHJvbD8KPj4gTGFzdCBv
bmUsIHRlbGwgdGhlIE1BQyB0byB1c2UgZmxvdyBjb250cm9sLgo+IFNvIHRoZSBmaXJzdCBpZigp
IHN0YXRlbWVudCBpcyBpbmNvcnJlY3QsIGFuZCBzaG91bGQgYmUgcmVtb3ZlZAo+IGVudGlyZWx5
LiAgWW91IG9ubHkgd2FudCB0byBlbmFibGUgdGhlIE1BQyB0byB1c2UgZmxvdyBjb250cm9sIGFz
IGEKPiByZXN1bHQgb2YgdGhlIG5lZ290aWF0aW9uIHJlc3VsdHMuCgpSZW7DqSwKaWl1YywgdGhp
cyBpcyB3aGF0J3MgZG9jdW1lbnRlZCBpbiB0YWJsZSAyOEItMyBvZiB0aGUgODAyLjMgc3BlYyBv
biBwYWdlCjU5OC7CoCBwZGYgb2Ygc2VjdGlvbiAyIGhlcmU6Cmh0dHA6Ly93d3cuaXNtbGFiLnVz
Zi5lZHUvZGNvbS9DaDNfODAyLjMtMjAwNV9zZWN0aW9uMi5wZGYKCj4+IE9uIHRoZSBjdXJyZW50
IGRyaXZlciBib3RoIGJpdHMgYXJlIHNldCBpbiBhIGZvcmNlZC1saW5rIHNpdHVhdGlvbi4KPj4K
Pj4gSWYgd2UgYWx3YXlzIGZvcmNlcyB0aGUgTUFDIG1vZGUgSSB0aGluayBJIGFsd2F5cyBzZXQg
dGhlc2UgYml0cyBhbmQgZG9uJ3QKPj4gYW55dGhpbmcgd2l0aCB0aGUgUGF1c2UgbW9kZXM/IElz
IHRoYXQgdGhlIHJpZ2h0IHdheSB0byBkbyBpdD8KPiBTbyB3aGF0IGhhcHBlbnMgaWYgeW91ciBs
aW5rIHBhcnRuZXIgKGUuZy4gc3dpdGNoKSBkb2VzIG5vdCBzdXBwb3J0Cj4gZmxvdyBjb250cm9s
PyAgV2hhdCBpZiB5b3VyIGxpbmsgcGFydG5lciBmbG9vZHMgc3VjaCBmcmFtZXMgdG8gYWxsCj4g
cG9ydHM/ICBZb3UgZW5kIHVwIHRyYW5zbWl0dGluZyBmbG93IGNvbnRyb2wgZnJhbWVzLCB3aGlj
aCBjb3VsZCBiZQo+IHNlbnQgdG8gYWxsIHN0YXRpb25zIG9uIHRoZSBuZXR3b3JrLi4uIHNlZW1z
IG5vdCBhIGdvb2QgaWRlYS4KPgo+IEltcGxlbWVudGluZyBzdHVmZiBwcm9wZXJseSBhbmQgbm90
IHRha2luZyBzaG9ydC1jdXRzIGlzIGFsd2F5cyBhCj4gZ29vZCBpZGVhIGZvciBpbnRlci1vcGVy
YWJpbGl0eS4KCkJ1dCB3aWxsIHRoZXJlIHN0aWxsIGJlIGEgbWVjaGFuaXNtIHRvIGlnbm9yZSBs
aW5rIHBhcnRuZXIncyBhZHZlcnRpc2luZwphbmQgZm9yY2UgdGhlc2UgcGFyYW1ldGVycz/CoCBJ
J3ZlIHJ1biBpbnRvIHdoYXQgYXBwZWFycyB0byBiZSBxdWlya3Mgb24KdHdvIHNlcGFyYXRlIE5J
Q3Mgb3IgdGhlaXIgZHJpdmVycywgYSB0cC1saW5rIHRnLTM0NjggKHI4MTY5KSBhbmQgYW4KQXF1
YW50aWEgQVFDMTA3IDgwMi4zYnogKGF0bGFudGljKSB3aGVyZSB0aGVzZSBsaW5rIHBhcnRuZXJz
IGFyZW4ndAphdXRvLW5lZ290aWF0aW5nIGNvcnJlY3RseSBhZnRlciBJIHN3aXRjaCB0aGUgbXQ3
NTMwIG91dCBvZgphdXRvLW5lZ290aWF0aW9uIG1vZGUuwqAgT2YgY291cnNlLCBpdCBjb3VsZCBi
ZSBhIG1pc3Rha2UgSSd2ZSBtYWRlIChhbmQKc2hvdWxkIHRodXMgYmUgZGlzY3Vzc2VkIGVsc2V3
aGVyZSksIGJ1dCBpaXJjLCBJIGhhZCB0byBmb3JjZSBlbmFibGUKZmxvdyBjb250cm9sIGFuZCB0
aGVuIGFsc28gZGlzYWJsZSBhdXRvLW5lZ290aWF0aW9uIG9uIHRoZSBsaW5rIHBhcnRuZXIKYW5k
IGZvcmNlIHRoZSBtb2RlIEkgd2FudGVkLgoKQ2hlZXJzLApEYW5pZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcg
bGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
