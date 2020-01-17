Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4011410F8
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Jan 2020 19:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXcQ7ZemW+RU/OmPcrYkHano0fboxFmPlkyH8ZWCfkw=; b=TPqfREeOi0nxES
	aYCcTbFjFfozfj7GZ/xQ0xhMrZzfLlb9PW61akJUJeHS8tJZmDR6TTMd6PvQOn1YEZjcpdvtelcJg
	HwjMa5HOu/ZVBpRB8EWT43vK3RPNvImcIlgkAUqFLtx27J15HZCMbrXpElb9YYDFGT1U5byTBTdg0
	5G59B4cdVjAQ9T94x52xmaURAW1I7FXyjRpn/O5+u7ngKpBga/wWwSbmLWKyARXQwuO6ajuU5U9lH
	85MW/TmPRQ2TGLmY7593qyzqLCNb5pHHkjaJZYIeN5JxBeLCBfb17pJrfCK9KPNV3obAzYu8qWdjA
	DAbz19M50nvglHsH2hrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWZ2-0008II-Qb; Fri, 17 Jan 2020 18:41:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWYw-0008Gq-91
 for linux-mediatek@lists.infradead.org; Fri, 17 Jan 2020 18:41:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so23754361wru.4
 for <linux-mediatek@lists.infradead.org>; Fri, 17 Jan 2020 10:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Hl2KZMvca+Q8kuDbq/WhLs/Rb2uaYU/dE+p/JdLh8Ok=;
 b=pya+t3ljvih0NEjKSrRArdnH313MxZONXt8kTq2RCSmOCsZP7KR3baPZAFPehTPQxx
 VuKQfkLNIc4O7hDdNydFUo+Rit+LleyvNPqIqy5948KMTJxnyj2MVgDSFofqnZqQS5Nx
 Or3Zo594/EnJk39EWoCRDMjG4V8NF2BmHRXws3l/1nFpofa/+Bvxs6YNhCcdsqG7x3wk
 vR24AbaUtYr8X6KA5iQGuwz6Z7LgbIrcG2vC/4HLMaSGjk6nSLQU3vF89b7ikkhwAMpc
 A800IqSQpGRJuHLz6yxrYHsfaVbVemOGjrYeY0sTZTYGZtjBtpiMZzaKyNvlSn/ysOZH
 U/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Hl2KZMvca+Q8kuDbq/WhLs/Rb2uaYU/dE+p/JdLh8Ok=;
 b=ctLgP/kdIp0YzgOcqbsLHH1SDrFWvloL6FLGTtJoxDzyHVo2zPGzR1DKi7MR2gKbEW
 t9GeZvJ4t2AGZWYP3ZYroOc4eagl3iIO/I2JNgMJ8q/BA+qEDi9f2xaod3HjTzYbz53z
 qzMWV0j+6DZT0Fwgf29glKL01mpRWZh7QUBZD5OnMh3BfzaNGd+8J3vQorvSLlIwZEHm
 m6ceeJ2VVHZbnzME5yioO74YgVogrkvSO7WBicJxYyO4pz3SrQUn2kz0ec1setgtNWjf
 XMg//HaKThBcj3xPXcLVWXlSuvqlpgWICtIZdlOs2J1MerYKiwc7geu+W1b/JTcosWHF
 Rb2w==
X-Gm-Message-State: APjAAAX4g5GRk9zXg6ULJzkufvPJMkczeS5pl7cuQ/8doc75AAUBl3my
 yBPWZ3x9kg7ksj6GJ5Bb0E00DLFvTh6/2CbSz9i+iA==
X-Google-Smtp-Source: APXvYqy7GEdReDU3nlMa6hYZ9OrqeU0qE5bnCgOzJN8pNOYKrSXVI8Xbd+U1s/kjHmCr0FVwMIzZK3FVc56LwsF0buY=
X-Received: by 2002:adf:e887:: with SMTP id d7mr4490076wrm.162.1579286500370; 
 Fri, 17 Jan 2020 10:41:40 -0800 (PST)
MIME-Version: 1.0
References: <20200116043612.52782-1-surenb@google.com>
 <20200117151533.12381-1-mkoutny@suse.com>
 <20200117151533.12381-3-mkoutny@suse.com>
 <20200117172806.GK2677547@devbig004.ftw2.facebook.com>
In-Reply-To: <20200117172806.GK2677547@devbig004.ftw2.facebook.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Fri, 17 Jan 2020 10:41:29 -0800
Message-ID: <CAJuCfpFqEUVFXsjD8XcCKsGXKTf72r0Ek5_1yqu_k5UZAssKTw@mail.gmail.com>
Subject: Re: [PATCH 2/3] cgroup: Iterate tasks that did not finish do_exit()
To: Tejun Heo <tj@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_104142_349823_E657DDFD 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: JeiFeng Lee <linger.lee@mediatek.com>, Tom Cherry <tomcherry@google.com>,
 shuah@kernel.org, linux-mediatek@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Li Zefan <lizefan@huawei.com>,
 =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>,
 linux-kselftest@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 matthias.bgg@gmail.com, cgroups mailinglist <cgroups@vger.kernel.org>,
 alex.shi@linux.alibaba.com, kernel-team <kernel-team@android.com>,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgOToyOCBBTSBUZWp1biBIZW8gPHRqQGtlcm5lbC5vcmc+
IHdyb3RlOgo+Cj4gT24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDQ6MTU6MzJQTSArMDEwMCwgTWlj
aGFsIEtvdXRuw70gd3JvdGU6Cj4gPiBQRl9FWElUSU5HIGlzIHNldCBlYXJsaWVyIHRoYW4gYWN0
dWFsIHJlbW92YWwgZnJvbSBjc3Nfc2V0IHdoZW4gYSB0YXNrCj4gPiBpcyBleGl0dGluZy4gVGhp
cyBjYW4gY29uZnVzZSBjZ3JvdXAucHJvY3MgcmVhZGVycyB3aG8gc2VlIG5vIFBGX0VYSVRJTkcK
PiA+IHRhc2tzLCBob3dldmVyLCBybWRpciBpcyBjaGVja2luZyBhZ2FpbnN0IGNzc19zZXQgbWVt
YmVyc2hpcCBzbyBpdCBjYW4KPiA+IHRyYW5zaXRpb25hbGx5IGZhaWwgd2l0aCBFQlVTWS4KPiA+
Cj4gPiBGaXggdGhpcyBieSBsaXN0aW5nIHRhc2tzIHRoYXQgd2VyZW4ndCB1bmxpbmtlZCBmcm9t
IGNzc19zZXQgYWN0aXZlCj4gPiBsaXN0cy4KPiA+IEl0IG1heSBoYXBwZW4gdGhhdCBvdGhlciB1
c2VycyBvZiB0aGUgdGFzayBpdGVyYXRvciAod2l0aG91dAo+ID4gQ1NTX1RBU0tfSVRFUl9QUk9D
Uykgc3BvdCBhIFBGX0VYSVRJTkcgdGFzayBiZWZvcmUgY2dyb3VwX2V4aXQoKS4gVGhpcwo+ID4g
aXMgZXF1YWwgdG8gdGhlIHN0YXRlIGJlZm9yZSBjb21taXQgYzAzY2Q3NzM4YTgzICgiY2dyb3Vw
OiBJbmNsdWRlIGR5aW5nCj4gPiBsZWFkZXJzIHdpdGggbGl2ZSB0aHJlYWRzIGluIFBST0NTIGl0
ZXJhdGlvbnMiKSBidXQgaXQgbWF5IGJlIHJldmlld2VkCj4gPiBsYXRlci4KClRlc3RlZC1ieTog
U3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4KCj4KPiBZZWFoLCB0aGlzIGxv
b2tzIGZpbmUgdG8gbWUuICBBbnkgY2hhbmNlIHlvdSBjYW4gb3JkZXIgdGhpcyBiZWZvcmUgdGhl
Cj4gY2xlYW4gdXAgc28gdGhhdCB3ZSBjYW4gbWFyayBpdCBmb3IgLXN0YWJsZS4KPgoKKzEgZm9y
IHJlb3JkZXJpbmcuIE1ha2VzIGl0IGVhc2llciB0byBiYWNrcG9ydC4KVGhhbmtzLApTdXJlbi4K
Cj4gVGhhbmtzLgo+Cj4gLS0KPiB0ZWp1bgo+Cj4gLS0KPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRo
aXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWls
IHRvIGtlcm5lbC10ZWFtK3Vuc3Vic2NyaWJlQGFuZHJvaWQuY29tLgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5n
IGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
