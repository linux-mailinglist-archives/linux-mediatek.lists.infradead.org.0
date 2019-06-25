Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B31557AC
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 21:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOGgjBaa4vNUj4plry9stHB4h1fTr0cGdXP25jjPSqw=; b=Wbo8e+sOeXRuIi
	5pkkBVC+s+EQs58910KL25Rz2l89RbyrR4co+85j9aKlWg4hiJV3velmfvggi+FsmnvKDddbGaz9G
	iL7W9b2EKxjkfP7p6Beqe1eD02wS1rdhhsMlMEh/oHnwCd32wA1vetZXIrKBomlIViyLIgtdadDdM
	Cfra4IirzIN03GZZg9AxGrI9mXGqpfvgOw0vTvJAH8jdWA0B8HNHCElI6yRL/n5t7JeieQlYU5kMW
	c0v5H0RKWPDL51DfhOitWKeB3+8AheCe7wBZt4+59q4rnOp3t3unJY95JB4X/8gxRTgNu3TiS0yUc
	kc/x0lU9XpZjrT8MRz2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfqvz-00015s-5L; Tue, 25 Jun 2019 19:16:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfqvu-00015P-WF
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 19:16:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so19203099wru.0
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 12:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7dcQaIPz7vnt+Ooxu0MmJM1NbVvCWS+x4xRvMp+fYdo=;
 b=u6DlC2/pqEleeYScCLjvuPW7BwC9X8z/BxgMswWeOhhQ+YKzLKn4ATYXbyokfE01tf
 hkuWEbrIZP6SdvcW8q0jxSGypkSA/WZXEgjZCux4LfnfnVuSKVz+P+9ZIah00S3Lx8Pa
 ek9Mh28mSJO3mRfEbAPxsXkPTClHDCO3XV6eNjNVeZv3Bk7ruQaxqqpdA8iwkVG1SjCb
 e++awQ/LTf7wwfIUgDrLvoww6yBg9Cgdcl6XBVh2ReOBTsWtHtaGAS9k6m/wgpcMiKZj
 8tUIXKvaTVQKU/0dfTHCItvGAgNmTKQL086zu+uBfAI/W02yCythRBpmkchW6mP630WQ
 L92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=7dcQaIPz7vnt+Ooxu0MmJM1NbVvCWS+x4xRvMp+fYdo=;
 b=lpiJpc1pbr23b1kmKW93PkH3SHpw00j8dcZCH0Og9L1nVFBtfffUpHzYmuWrcwqziI
 YT8vaaJGAcBk8hDr+pqxhwFfhjVfhyJBXIV7vHv6slZFIfvr3FuNjvgGCHiAr3u2EYJb
 VSMl+bCaNAaPStP2P+PhA2bvJ+1O3o/TtwVhixWNJhx9/Su65Pv0J1wyx9VhrR0rt2W/
 GMkf2A7MvTHKLLfYV/o8pEmy4w5pKZdIVjlrly/qofrZstt7Q102KRwtpUJdESI26Jn5
 rk1VtRmBqAWVjCqcakCTZ0ozcNuJxdwZ2oW87x5KrZFag4invAxIG5v3vLyWmSqOH/07
 lJgw==
X-Gm-Message-State: APjAAAWL65XZJL40BtX/tB4d+bD/D8ZeyK5if5zlTBgSMCCj8y/bgMxo
 5Nmt3j3HzXherqV2uEIJNbICpwHh
X-Google-Smtp-Source: APXvYqxl+0/N4V0FyueeXME8hVRAOMl1VNfhdEk/jsaM+Sr+4yrTqZ70Dz8ZHXpfHfQEnj2fLG+hrA==
X-Received: by 2002:adf:edcd:: with SMTP id v13mr37289051wro.210.1561490205264; 
 Tue, 25 Jun 2019 12:16:45 -0700 (PDT)
Received: from [10.67.50.91] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id q1sm27443wmq.25.2019.06.25.12.16.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 12:16:44 -0700 (PDT)
Subject: Re: [PATCH RFC net-next 4/5] dt-bindings: net: dsa: mt7530: Add
 mediatek,ephy-handle to isolate ext. phy
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-5-opensource@vdorst.com>
 <e6175753-eb99-63e5-767e-f82becbf8d1a@gmail.com>
 <20190625093042.Horde._8BNPFSzW6B9-CI8P6akHTh@www.vdorst.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <1bcedae6-305d-5019-a7a1-e11ee9e99a7b@gmail.com>
Date: Tue, 25 Jun 2019 12:16:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625093042.Horde._8BNPFSzW6B9-CI8P6akHTh@www.vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_121647_063527_1D7F3B2E 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: andrew@lunn.ch, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux@armlinux.org.uk, davem@davemloft.net,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, vivien.didelot@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gNi8yNS8xOSAyOjMwIEFNLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4gUXVvdGluZyBGbG9y
aWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT46Cj4gCj4gSGkgRmxvcmlhbgo+IAo+
PiBPbiA2LzI0LzE5IDc6NTIgQU0sIFJlbsOpIHZhbiBEb3JzdCB3cm90ZToKPj4+IE9uIHNvbWUg
cGxhdGZvcnVtIHRoZSBleHRlcm5hbCBwaHkgY2FuIG9ubHkgaW50ZXJmYWNlIHRvIHRoZSBwb3J0
IDUKPj4+IG9mIHRoZQo+Pj4gc3dpdGNoIGJlY2F1c2UgdGhlIFJHTUlJIFRYIGFuZCBSWCBsaW5l
cyBhcmUgc3dhcHBlZC4gQnV0IGl0IHN0aWxsCj4+PiBjYW4gYmUKPj4+IHVzZWZ1bCB0byB1c2Ug
dGhlIGludGVybmFsIHBoeSBvZiB0aGUgc3dpdGNoIHRvIGFjdCBhcyBhIFdBTiBwb3J0IHdoaWNo
Cj4+PiBjb25uZWN0ZXMgdG8gdGhlIDJuZCBHTUFDLiBUaGlzIGdpdmVzIFdBTiBwb3J0IGRlZGlj
YXRlZCBiYW5kd2lkdGggdG8KPj4+IHRoZSBTT0MuIFRoaXMgaW5jcmVhc2VzIHRoZSBMQU4gYW5k
IFdBTiByb3V0aW5nLgo+Pj4KPj4+IEJ5IGFkZGluZyB0aGUgb3B0aW9uYWwgcHJvcGVydHkgbWVk
aWF0ZWssZXBoeS1oYW5kbGUsIHRoZSBleHRlcm5hbCBwaHkKPj4+IGlzIHB1dCBpbiBpc29sYXRp
b24gbW9kZSB3aGVuIGludGVybmFsIHBoeSBpcyBjb25uZWN0ZWQgdG8gMm5kIEdNQUMgdmlhCj4+
PiBwaHktaGFuZGxlIHByb3BlcnR5Lgo+Pgo+PiBNb3N0IHBsYXRmb3JtcyB3ZSBoYXZlIHNlZW4g
c28gZmFyIGltcGxlbWVudCB0aGlzIGxvZ2ljIHdpdGggYSBtZGlvLW11eCwKPj4gY2FuIHlvdSBz
ZWUgaWYgdGhhdCBpcyBwb3NzaWJsZSBoZXJlPyBzdG1tYWMgaGFzIHBsZW50eSBvZiBleGFtcGxl
cyBsaWtlCj4+IHRob3NlLgo+IAo+IE1heSBJIGRvbid0IHVuZGVyc3RhbmQgaXQgY29ycmVjdGx5
LCBidXQgYWxsIHRoZSBkZXZpY2VzIGFyZSBvbiB0aGUgc2FtZQo+IE1ESU8KPiBidXMuCj4gSSB0
cmllZCB0byBtYWtlIGEgQVNDSUkgZGlhZ3JhbSB0byBtYWtlIGl0IGEgYml0IG1vcmUgY2xlYXIu
CgpCYXNlZCBvbiB5b3VyIGRpYWdyYW0gYW5kIHlvdXIgZXhwbGFuYXRpb24sIHRoZW4gSSBkbyBu
b3QgcmVhbGx5IHNlZSBhCm5lZWQgZm9yIHRoYXQgcHJvcGVydHkgeW91IGNhbiBzY2FuIGFsbCBv
ZiB0aGUgc3dpdGNoIHBvcnQncyBwcm9wZXJ0aWVzCmFuZCBkZXRlcm1pbmVkIHdoaWNoIGNvbmZp
Z3VyYXRpb24gaXMgYXBwbGllZCBhbmQgcGVyZm9ybSB0aGUgUEhZCmlzb2xhdGlvbiBhcyBuZWNl
c3NhcnkuIEl0IGxvb2tzIGxpa2UgeW91IGFyZSB1c2luZyB0aGlzIHByb3BlcnR5IGFzIGEKd2F5
IHRvIHNpbXBsaWZ5IHlvdXIgY29uZmlndXJhdGlvbiBsb2dpYywgdGhhdCBpcyBub3QgcXVpdGUg
d2hhdCBEZXZpY2UKVHJlZSBpcyBtZWFudCBmb3IuCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5n
IGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
