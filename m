Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DA818BCEF
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Mar 2020 17:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTH6iEC+rpl0JKx2P2OI980PTbwpn53Z+r0HUpi8F3A=; b=s+/YkWXv2FF6VR
	xW4GHXHDqJN2U8Z1zyLpRIoQvKRaVA7g/TJr42Uf2g26WXhZAw8l0+QaHTl06o7BmvnC1oUAwy8Xt
	WcwzMrEIbx35/hahG4NtEXl+HoPCaB0+KbRk74NqWifdmAAC6Nm7K30FkPUBsKrJABvwUREfNz0jW
	OFdFZ5uA36FMrX5dHbYSLiWLWGB37eOMkU+jRimhRSrkntozNklwnsJMI/yHZ51RF7GB0LbrdlBe3
	O5Ldyj1PFI6VEF3yZUOrMtYMe+zi/ZHmNnpO06VymHdKYMQqnt+5lei/BTPFnmhM8DQKSjTF1qr9F
	qY9mXuGYv/QpmlrRNWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyGw-00083z-7M; Thu, 19 Mar 2020 16:43:54 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyGt-00083Z-7s
 for linux-mediatek@lists.infradead.org; Thu, 19 Mar 2020 16:43:52 +0000
Received: by mail-pf1-x42a.google.com with SMTP id f206so1708647pfa.10
 for <linux-mediatek@lists.infradead.org>; Thu, 19 Mar 2020 09:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nutBtZSSrxHSWNlv4EFvg9vRZZx3/bPTfG92sxy/WBI=;
 b=rlIybPyThGEq0lQ5I2j81lTGc11H56HJQPEnsboaHMYxoOqcG+/MKjPcDDfpy0vbty
 JbsUpCYxWVxDBurPFG88QpCbr6iTuqoJ9kZiiZ1Ea3RWfA9IIeRr6HV7itKWORPlKiyT
 lCT2kzMS3mPdvA3gjYStnoG979QOTzGfZX3RIg8tFh83LPPjHZycD31uohUZZLAm9ZXD
 a/SdyvVA22Y9QQC5IKGxj1PxkQIaSOB90wzm5W6gDv9NL29HfTEE42aadbP205cR5TGF
 PGEmsdAduD4M+VQj2ML+IDzjZnV9w13TZLH1CwDH5V+VVzv3FXbqgHuge/QWbLITnZ1S
 Cl7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nutBtZSSrxHSWNlv4EFvg9vRZZx3/bPTfG92sxy/WBI=;
 b=WU2u6oUEKgh9yyEAjWeMuh7Lcjm/cc8GPDkeWh3WgoX1EbEPDBITz3podJIq7ZltIc
 OfYZOfIwHeXQm1xOGlt9LySE+GpL28k0EE3kUva2G2xxuYGSrwGad8nxP0cohqoKELfu
 liy+RicplUtixA5aICc9mcVLVp/IPxgUU67FjGkHgRHXvQEDURLD3acJN82hbzUycw5o
 GmjmEKk2i7zE7eF9fZp0TV3G0VXcRCKglFM1GYrJPU3weeCBSmHdP3SW1Ptbji+yXqjJ
 D69OoF1mhRecW2UM4qoz4jQ8nTRQwaewoS9xSYPzNTgl9J5YpPoY1+CIxGAfoPBGm7ta
 hdtw==
X-Gm-Message-State: ANhLgQ1iznTJFgUqs9S7M3HbuT96QnDQj1S0T/YJS36+NRTUxPCPI6lk
 a8s4GhkX+2siSPVoDz+3uY8=
X-Google-Smtp-Source: ADFU+vsdlGjAKLjbhMiQ0aHpojd6NOha9eGNSEsLUMQ04dQMjJVadi0Ohh+zQygTU3FCl3kb4Tpmqg==
X-Received: by 2002:a63:d144:: with SMTP id c4mr4083569pgj.261.1584636229315; 
 Thu, 19 Mar 2020 09:43:49 -0700 (PDT)
Received: from [192.168.1.2] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.googlemail.com with ESMTPSA id
 i131sm2952404pgc.18.2020.03.19.09.43.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 09:43:48 -0700 (PDT)
Subject: Re: [[PATCH,net]] net: dsa: mt7530: Change the LINK bit to reflect
 the link status
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 netdev@vger.kernel.org
References: <20200319134756.46428-1-opensource@vdorst.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <4a389a34-f41e-4b86-c0c7-94e4f36db442@gmail.com>
Date: Thu, 19 Mar 2020 09:43:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200319134756.46428-1-opensource@vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_094351_283803_97F63492 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Landen Chao <landen.chao@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, Sean Wang <sean.wang@mediatek.com>,
 Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 DENG Qingfang <dqfext@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Smith <andrew.smith@digi.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TGUgMjAyMC0wMy0xOSDDoCAwNjo0NywgUmVuw6kgdmFuIERvcnN0IGEgw6ljcml0wqA6Cj4gQW5k
cmV3IHJlcG9ydGVkOgo+IAo+IEFmdGVyIGEgbnVtYmVyIG9mIG5ldHdvcmsgcG9ydCBsaW5rIHVw
L2Rvd24gY2hhbmdlcywgc29tZXRpbWVzIHRoZSBzd2l0Y2gKPiBwb3J0IGdldHMgc3R1Y2sgaW4g
YSBzdGF0ZSB3aGVyZSBpdCB0aGlua3MgaXQgaXMgc3RpbGwgdHJhbnNtaXR0aW5nIHBhY2tldHMK
PiBidXQgdGhlIGNwdSBwb3J0IGlzIG5vdCBhY3R1YWxseSB0cmFuc21pdHRpbmcgYW55bW9yZS4g
SW4gdGhpcyBzdGF0ZSB5b3UKPiB3aWxsIHNlZSBhIG1lc3NhZ2Ugb24gdGhlIGNvbnNvbGUKPiAi
bXRrX3NvY19ldGggMWUxMDAwMDAuZXRoZXJuZXQgZXRoMDogdHJhbnNtaXQgdGltZWQgb3V0IiBh
bmQgdGhlIFR4IGNvdW50ZXIKPiBpbiBpZmNvbmZpZyB3aWxsIGJlIGluY3JlbWVudGluZyBvbiB2
aXJ0dWFsIHBvcnQsIGJ1dCBub3QgaW5jcmVtZW50aW5nIG9uCj4gY3B1IHBvcnQuCj4gCj4gVGhl
IGlzc3VlIGlzIHRoYXQgTUFDIFRYL1JYIHN0YXR1cyBoYXMgbm8gaW1wYWN0IG9uIHRoZSBsaW5r
IHN0YXR1cyBvcgo+IHF1ZXVlIG1hbmFnZXIgb2YgdGhlIHN3aXRjaC4gU28gdGhlIHF1ZXVlIG1h
bmFnZXIganVzdCBxdWV1ZXMgdXAgcGFja2V0cwo+IG9mIGEgZGlzYWJsZWQgcG9ydCBhbmQgc2Vu
ZHMgb3V0IHBhdXNlIGZyYW1lcyB3aGVuIHRoZSBxdWV1ZSBpcyBmdWxsLgo+IAo+IENoYW5nZSB0
aGUgTElOSyBiaXQgdG8gcmVmbGVjdCB0aGUgbGluayBzdGF0dXMuCj4gCj4gRml4ZXM6IGI4ZjEy
NmE4ZDU0MyAoIm5ldC1uZXh0OiBkc2E6IGFkZCBkc2Egc3VwcG9ydCBmb3IgTWVkaWF0ZWsgTVQ3
NTMwIHN3aXRjaCIpCj4gUmVwb3J0ZWQtYnk6IEFuZHJldyBTbWl0aCA8YW5kcmV3LnNtaXRoQGRp
Z2kuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3JzdCA8b3BlbnNvdXJjZUB2ZG9y
c3QuY29tPgoKUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwu
Y29tPgotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tZWRpYXRlawo=
