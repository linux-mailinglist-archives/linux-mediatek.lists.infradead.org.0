Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761E151D7C
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 23:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENDF/7eDhr2gfzrxd9EwTwk8Y7gusvDQquvx3KXjszU=; b=MtNqwoJf+D3QNB
	bS99cIZ4n1F4cXjJM5u7H0okbAh1Z8HDJ3qEAPqgKqgcu/BbsoT7OiFnAw8/Qi3gNevaSQ6ELKb8T
	gm2XmGuTyI07B9tzG9YO4JoIdkoTB4ZPVrAIy2x9rbjZCzEXrmjua/DGBmy50/ncZ14+EbFD8sIfz
	FAYgyNtVJd6PGqZFh3PB54oA3eejm6bPO8atQpxxo6S9QA4X63eTLI1inH7j5wVZ5C+UuKZIpExrU
	DwMhd/OCO80UY396Tbw2EfOrd4KUmMwih1j+WBTIVEadyY2r8kBNco86lmRzuSIw/CRffpc+aW6bA
	1rwedcYHeIY1VhjiQZPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWxc-0001JE-Kc; Mon, 24 Jun 2019 21:57:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWxZ-0001Ij-24
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 21:57:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id p11so15482648wre.7
 for <linux-mediatek@lists.infradead.org>; Mon, 24 Jun 2019 14:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W/CPu8mDpgbQ6+y/jh0cCg4lc5zwQwBy1UD2gqxetv8=;
 b=i/cOB+zx0cF5OYFsz1XUZip3Ly2U+E3QwzjSRkP/Xptxqasl5ATpHZAiNzO1v3j58R
 PkQniqjvtuojreUlFJlg2YkaZDYqKyWqCmqNHLCZphIoIw8QG/NM9Ah3PmkolBd81uoV
 wqChzCJAoA7v4y3bgCDGzbC68HIfzwBwJiVwWb6zPMHUNHVDmB7Kf63JtkJ1avurZEZf
 kmsH2D8ABAVWBFgM3mcF3fKWoz/yy+bxzx/kRgWaeQrB91QR0ZPWB1Ayjuo9gGlJ9moE
 eM2GTbv+Kw29yUU53/iUuqDIBZhHgFv//5UyNw2/mTuU8Rz7HDqfRn1ofFuiW5oNpt9v
 xxOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=W/CPu8mDpgbQ6+y/jh0cCg4lc5zwQwBy1UD2gqxetv8=;
 b=mZmhml0M+yReaspOKJewxBX5K7rMDmF5zMHDjIgs243iPRTj+LdTWLM120YmAc++gJ
 9wlWd7i1Om+2fwuFDfx5VASAXi7+4X7V7XNbs9Tat0HgWKbm5PuLZD0QVmmKbvQz4Lts
 X1t7flgfwgke9XVtPneh+uHFBGrLibQyCvwEA99D1rtiyd4KaUTQLhVAO+/Ew53GA0V4
 zviV6t4tHJePxcEqkBjFvEYq0eah0inb35s6c85c74DUypO3e5caPVWWxwPCHXYesGlb
 YnlotkmgN9zI0eJBJQeZcH1SrfSHUSTer08djwK+IYEpbMlcuQS7cbSAL+XLyCg5CLtR
 FAaA==
X-Gm-Message-State: APjAAAUdoeB4ZVBlHi0+IPEWTe9INMe9l7Xv3onQqs+uLlqoCrEHeNA/
 awXjh+UKpJcLzj2LCVfjFfY=
X-Google-Smtp-Source: APXvYqx8wABeL1QbgO9QDBu08D0WEnt0Psf0WToa6e9AqudPDmXHQMkt22uXLoH/iRdhqPb/8IYlOQ==
X-Received: by 2002:adf:dbd2:: with SMTP id e18mr574121wrj.110.1561413426110; 
 Mon, 24 Jun 2019 14:57:06 -0700 (PDT)
Received: from [10.67.49.31] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id x8sm523904wmc.5.2019.06.24.14.57.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 14:57:05 -0700 (PDT)
Subject: Re: [PATCH RFC net-next 4/5] dt-bindings: net: dsa: mt7530: Add
 mediatek,ephy-handle to isolate ext. phy
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 sean.wang@mediatek.com, linux@armlinux.org.uk, davem@davemloft.net,
 matthias.bgg@gmail.com, andrew@lunn.ch, vivien.didelot@gmail.com
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-5-opensource@vdorst.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <e6175753-eb99-63e5-767e-f82becbf8d1a@gmail.com>
Date: Mon, 24 Jun 2019 14:56:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624145251.4849-5-opensource@vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_145709_132913_B1061109 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, frank-w@public-files.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gNi8yNC8xOSA3OjUyIEFNLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4gT24gc29tZSBwbGF0
Zm9ydW0gdGhlIGV4dGVybmFsIHBoeSBjYW4gb25seSBpbnRlcmZhY2UgdG8gdGhlIHBvcnQgNSBv
ZiB0aGUKPiBzd2l0Y2ggYmVjYXVzZSB0aGUgUkdNSUkgVFggYW5kIFJYIGxpbmVzIGFyZSBzd2Fw
cGVkLiBCdXQgaXQgc3RpbGwgY2FuIGJlCj4gdXNlZnVsIHRvIHVzZSB0aGUgaW50ZXJuYWwgcGh5
IG9mIHRoZSBzd2l0Y2ggdG8gYWN0IGFzIGEgV0FOIHBvcnQgd2hpY2gKPiBjb25uZWN0ZXMgdG8g
dGhlIDJuZCBHTUFDLiBUaGlzIGdpdmVzIFdBTiBwb3J0IGRlZGljYXRlZCBiYW5kd2lkdGggdG8K
PiB0aGUgU09DLiBUaGlzIGluY3JlYXNlcyB0aGUgTEFOIGFuZCBXQU4gcm91dGluZy4KPiAKPiBC
eSBhZGRpbmcgdGhlIG9wdGlvbmFsIHByb3BlcnR5IG1lZGlhdGVrLGVwaHktaGFuZGxlLCB0aGUg
ZXh0ZXJuYWwgcGh5Cj4gaXMgcHV0IGluIGlzb2xhdGlvbiBtb2RlIHdoZW4gaW50ZXJuYWwgcGh5
IGlzIGNvbm5lY3RlZCB0byAybmQgR01BQyB2aWEKPiBwaHktaGFuZGxlIHByb3BlcnR5LgoKTW9z
dCBwbGF0Zm9ybXMgd2UgaGF2ZSBzZWVuIHNvIGZhciBpbXBsZW1lbnQgdGhpcyBsb2dpYyB3aXRo
IGEgbWRpby1tdXgsCmNhbiB5b3Ugc2VlIGlmIHRoYXQgaXMgcG9zc2libGUgaGVyZT8gc3RtbWFj
IGhhcyBwbGVudHkgb2YgZXhhbXBsZXMgbGlrZQp0aG9zZS4KLS0gCkZsb3JpYW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1h
aWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
