Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE20138E03
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 Jan 2020 10:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtgH9T0QeDvvHzMUhdv5jtPHDtaUYKEU9B4AXMdrVzY=; b=aUHrxTXq6uIO5Q
	C9OnRSzLmWh2103rVeGkFYDFCaHipBJkcAQ2kh9qcNfRvlVd5F/1nrYmWZ6JzMbcJlBW59Qf8x8Fv
	03j9QHFaxWbhJNdU22oA1MkXZsohhJXTp3+1BEo4Dtold82s7B1XqMuwqRU/2zTBHORjP7LUDKN/E
	zc7dAHt4aeNFpfpyvXfoaouzaGb46DMbaAC6kLfsllgr8YDwrASWIEW2lnTKeFXqbKLTFzxwTfgpN
	2NU9VyEzVdHL9tmgd6ooJ4e0pkFLED7yj9Pp0FI3b6Bg5TugtZzDFV5nej4xohHQwtZYlDYBT21Qd
	QbbjG0u/Da3GJoRKNZhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwF1-0008FM-8W; Mon, 13 Jan 2020 09:42:35 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwEi-0007yp-4u; Mon, 13 Jan 2020 09:42:17 +0000
Received: by mail-ed1-x543.google.com with SMTP id e10so7860942edv.9;
 Mon, 13 Jan 2020 01:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=U7KeLP59PevGGC5Z3wB8REEwHPKJRQN3w5hiDB2hOxQ=;
 b=gkdIVs2lFneKxILRe08ZFuatX83Y1qz9EEbVaioH/dqogaaCCdsTaKHQ+JHTS3srR0
 F2mHpMbTne+ScQQODsLLcDSztAY3RlD3ghO5cSKu6JhHjDUP0evfCBmHnx+sHdPYehLT
 fhE8+ad2EaaexkZhkPJenTbckLlM9La2xTJvRtcbhratmc6w7+iKbpp5cQuHiILJ2BG5
 rcNMTHI46v9qSBc77zu1QQX+Gxhm6sq8Pmv4X4Ky6xew543BRMrEDsZ1e+ns3w58ZE+Z
 G0fSFsa9y6c3vxWrWSK9c3OlJ+Y/2MGU0BafdEHzo839WVJuRNU+wFRCJGIReeY89RKc
 eLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=U7KeLP59PevGGC5Z3wB8REEwHPKJRQN3w5hiDB2hOxQ=;
 b=erED3pNcmuDK3VBI6uO1898QZEkIOs3kfFrfv8oHYKI+xUCsje5bK/v2bDqm9+CHaX
 X6NYzyfgwvu3kUQIoIABEGWuxWAJfJW8TYYd4DaNW07+bCrE1UTVNpMwenKSi1t6gfCo
 46LgEjLH/1iAZfr6CnHYQkOQQLHR4lkgoD12Mk7E6SX2P82rDlyUEyYEKbWxz4eBApHl
 mHuTdTWvnKeHnpMMtbirNz7LcqdzCqk8wuCaEj6QvHjICjFPOaDLVHUKL1+Dj0X6YMuX
 WjLcVJUlMGMMMq3XPuNfxRKbnIglH/4JfO61KElNvTFIv0d/FLSuuGvmDUPgAUsy0DnS
 2Mww==
X-Gm-Message-State: APjAAAWhSCXHSPayRkdhKGI2VoNSDct61DXuPHYaQzSGW9t2yR8MpIhv
 s1pbE6dCOL+lxqa8BXN/DE5O2f1aYch0hMrqdRg=
X-Google-Smtp-Source: APXvYqy8SM8Y+cR4BrF+oboBLfO9xNOTU4QgWP76WoRWA5nmy26BCRXzTEgIWDK02oI7osEZsjrKqq2/XWN0/Rs4LNQ=
X-Received: by 2002:a05:6402:1742:: with SMTP id
 v2mr16594732edx.171.1578908534048; 
 Mon, 13 Jan 2020 01:42:14 -0800 (PST)
MIME-Version: 1.0
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
 <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
In-Reply-To: <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Mon, 13 Jan 2020 11:42:03 +0200
Message-ID: <CA+h21hoSoZT+ieaOu8N=MCSqkzey0L6HeoXSyLtHjZztT0S9ug@mail.gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
To: Alexander Lobakin <alobakin@dlink.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014216_220123_53B6AC33 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Edward Cree <ecree@solarflare.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@mellanox.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgQWxleGFuZGVyLAoKT24gTW9uLCAxMyBKYW4gMjAyMCBhdCAxMToyMiwgQWxleGFuZGVyIExv
YmFraW4gPGFsb2Jha2luQGRsaW5rLnJ1PiB3cm90ZToKPgo+IENQVSBwb3J0cyBjYW4ndCBiZSBi
cmlkZ2VkIGFueXdheQo+Cj4gUmVnYXJkcywKPiDhmrcg4ZuWIOGaoiDhmqYg4ZqgIOGasQoKVGhl
IGZhY3QgdGhhdCBDUFUgcG9ydHMgY2FuJ3QgYmUgYnJpZGdlZCBpcyBhbHJlYWR5IG5vdCBpZGVh
bC4KT25lIGNhbiBoYXZlIGEgRFNBIHN3aXRjaCB3aXRoIGNhc2NhZGVkIHN3aXRjaGVzIG9uIGVh
Y2ggcG9ydCwgc28gaXQKYWN0cyBsaWtlIE4gRFNBIG1hc3RlcnMgKG5vdCBhcyBEU0EgbGlua3Ms
IHNpbmNlIHRoZSB0YWdnZXJzIGFyZQppbmNvbXBhdGlibGUpLCB3aXRoIGVhY2ggc3dpdGNoIGZv
cm1pbmcgaXRzIG93biB0cmVlLiBJdCBpcyBkZXNpcmFibGUKdGhhdCB0aGUgcG9ydHMgb2YgdGhl
IERTQSBzd2l0Y2ggb24gdG9wIGFyZSBicmlkZ2VkLCBzbyB0aGF0CmZvcndhcmRpbmcgYmV0d2Vl
biBjYXNjYWRlZCBzd2l0Y2hlcyBkb2VzIG5vdCBwYXNzIHRocm91Z2ggdGhlIENQVS4KCi1WbGFk
aW1pcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRp
YXRlawo=
