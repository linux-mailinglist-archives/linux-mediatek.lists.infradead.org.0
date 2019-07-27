Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F147777BD
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 10:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LcyUWmc9VKe31WC+79GwMK5L1lHKbVsdCoA3d1uKZxg=; b=Rz/DfcIcHEgQ+W
	AfITtgUtDEEtIONER7tidEBB+1XhV2YSOUrO8Mi+7XBBWoUAo7NGLRED/b8MdO5gZOrTjcnfI9cIb
	zBHGp9lsh02u565tQCC/WFCPRHqMF41oKhHEpyvdVc5QhWMQ/Bh8d4EMsHpkWdBI1Zriuet1Qo/Hx
	XbIYpKpHk6rxjNSQ7lhg4qfXUqSQUVghBDhmB31qtAAPyApCYUsWk6MvvqWAD5Gw699GMlEB4WtzG
	Bx9LMXqHtQn68ejRF4yurNs7cKcYd37g4Uwf/qsaqmdLZYk+0v4dW0fX4Z2Upao2DS3XUWiNpGnxt
	sR2OCA8Q/pCaAA1IsM8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrIHq-0002mE-Nf; Sat, 27 Jul 2019 08:42:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrIHl-0002ls-6T
 for linux-mediatek@lists.infradead.org; Sat, 27 Jul 2019 08:42:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so28087845wmj.3
 for <linux-mediatek@lists.infradead.org>; Sat, 27 Jul 2019 01:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=38BpCYy2RZO+b6j6/wJgmt20KHM6GmaUjQ92jgpxCD8=;
 b=btNI/AFyTSCzeE9aTqGRaZ4DeDWPXmkYTJHe0bcNah3P28r/mxtPk1Rvi8nUyq4TIc
 iw6w7xLrUPPgqBOUHDDRItPAunzH4yCk3PChNiozLLzDUYrbopa3A5EC44LWqxiNWKgL
 9Z5abIWfTNGiEgUxCvy5cJ3vh1PZXroXmj5NdCH3YeOR3UVlmwTe/adw0lG/Hozv8yLu
 NQ2U1hclBnxVs+0iIH+Qab0dCgH3fRPxryP4+eYjmGkxXQlGGnCdXD9ZmX9ls3TmWUby
 meFHJj8854qfsNl0AQCMQZnD1neUihn4sqowgPymYI6OsGKUtLzpGycye5vGYEuZIMIh
 c1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=38BpCYy2RZO+b6j6/wJgmt20KHM6GmaUjQ92jgpxCD8=;
 b=OQs+NI48XuiOx4LPAZ6/MqOL2f7cIj0579dkUz+X5TBTjEG0EC5deDwc61gsubojxs
 SH2aP+GVZQwaD6KTjIHIV40zBM7bM697sBtUkLhZbKl8SXLsFQU0a0GaoXBx97tOEKGC
 lWamXYKR5OGyRaH/W8DTZ5r7/rpsFMJIexaGFHXk6MtaFMg2qLmXqMSEtRj9jlE5gfxT
 NSPCiqNN0a39K/8n0d1LemH3uq2cIsW1FcQ2Mvxs6+imeNi0lLbF8Tp20BRDHSj+mYaa
 rbSc3A8nNo5PFMlRQXStMDGO4sOnL+e0EOCbYMkIzyVnN/zOfSAE9ol+f1Rt35VDYnH0
 kyWQ==
X-Gm-Message-State: APjAAAXf+lzjgeaVOOe+PUYiDFBaLmNY7I4dJhBRlxq6USYOiQj4xKTA
 Df2+/4nsUHn2Dep/Mu4Tzgs=
X-Google-Smtp-Source: APXvYqy9h051MP3rbpm2e488j9OqZjXgCJUWdt1GVmqyblFSR74Q9VvUrZAXvtOWP/AHfhaZpLYKIw==
X-Received: by 2002:a7b:c310:: with SMTP id k16mr49443614wmj.133.1564216955548; 
 Sat, 27 Jul 2019 01:42:35 -0700 (PDT)
Received: from [10.230.35.19] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id c4sm43588140wrt.86.2019.07.27.01.42.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 01:42:34 -0700 (PDT)
Subject: Re: [PATCH net-next 3/3] net: dsa: mt7530: Add support for port 5
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 netdev@vger.kernel.org
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-4-opensource@vdorst.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <f4a9e219-cd03-1512-874d-925c43e3c44f@gmail.com>
Date: Sat, 27 Jul 2019 10:42:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724192549.24615-4-opensource@vdorst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_014237_265893_5E01C9E8 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, frank-w@public-files.de, sean.wang@mediatek.com,
 linux@armlinux.org.uk, vivien.didelot@gmail.com, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, john@phrozen.org,
 matthias.bgg@gmail.com, linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

CgpPbiA3LzI0LzIwMTkgOToyNSBQTSwgUmVuw6kgdmFuIERvcnN0IHdyb3RlOgo+IEFkZGluZyBz
dXBwb3J0IGZvciBwb3J0IDUuCj4gCj4gUG9ydCA1IGNhbiBtdXhlZC9pbnRlcmZhY2UgdG86Cj4g
LSBpbnRlcm5hbCA1dGggR01BQyBvZiB0aGUgc3dpdGNoOyBjYW4gYmUgdXNlZCBhcyAybmQgQ1BV
IHBvcnQgb3IgYXMKPiAgIGV4dHJhIHBvcnQgd2l0aCBhbiBleHRlcm5hbCBwaHkgZm9yIGEgNnRo
IGV0aGVybmV0IHBvcnQuCj4gLSBpbnRlcm5hbCBQSFkgb2YgcG9ydCAwIG9yIDQ7IFVzZWQgaW4g
bW9zdCBhcHBsaWNhdGlvbnMgc28gdGhhdCBwb3J0IDAKPiAgIG9yIDQgaXMgdGhlIFdBTiBwb3J0
IGFuZCBpbnRlcmZhY2VzIHdpdGggdGhlIDJuZCBHTUFDIG9mIHRoZSBTT0MuCj4gCj4gU2lnbmVk
LW9mZi1ieTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+Cgpbc25pcF0K
Cj4gKwkvKiBTZXR1cCBwb3J0IDUgKi8KPiArCXByaXYtPnA1X2ludGZfc2VsID0gUDVfRElTQUJM
RUQ7Cj4gKwlpbnRlcmZhY2UgPSBQSFlfSU5URVJGQUNFX01PREVfTkE7Cj4gKwo+ICsJaWYgKCFk
c2FfaXNfdW51c2VkX3BvcnQoZHMsIDUpKSB7Cj4gKwkJcHJpdi0+cDVfaW50Zl9zZWwgPSBQNV9J
TlRGX1NFTF9HTUFDNTsKPiArCQlpbnRlcmZhY2UgPSBvZl9nZXRfcGh5X21vZGUoZHMtPnBvcnRz
WzVdLmRuKTsKPiArCX0gZWxzZSB7Cj4gKwkJLyogU2NhbiB0aGUgZXRoZXJuZXQgbm9kZXMuIExv
b2sgZm9yIEdNQUMxLCBMb29rdXAgdXNlZCBwaHkgKi8KPiArCQlmb3JfZWFjaF9jaGlsZF9vZl9u
b2RlKGRuLCBtYWNfbnApIHsKPiArCQkJaWYgKCFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShtYWNf
bnAsCj4gKwkJCQkJCSAgICAgIm1lZGlhdGVrLGV0aC1tYWMiKSkKPiArCQkJCWNvbnRpbnVlOwo+
ICsJCQlfaWQgPSBvZl9nZXRfcHJvcGVydHkobWFjX25wLCAicmVnIiwgTlVMTCk7Cj4gKwkJCWlm
IChiZTMyX3RvX2NwdXAoX2lkKSAgIT0gMSkKPiArCQkJCWNvbnRpbnVlOwo+ICsKPiArCQkJaW50
ZXJmYWNlID0gb2ZfZ2V0X3BoeV9tb2RlKG1hY19ucCk7Cj4gKwkJCXBoeV9ub2RlID0gb2ZfcGFy
c2VfcGhhbmRsZShtYWNfbnAsICJwaHktaGFuZGxlIiwgMCk7Cj4gKwo+ICsJCQlpZiAocGh5X25v
ZGUtPnBhcmVudCA9PSBwcml2LT5kZXYtPm9mX25vZGUtPnBhcmVudCkgewo+ICsJCQkJX2lkID0g
b2ZfZ2V0X3Byb3BlcnR5KHBoeV9ub2RlLCAicmVnIiwgTlVMTCk7Cj4gKwkJCQlpZCA9IGJlMzJf
dG9fY3B1cChfaWQpOwo+ICsJCQkJaWYgKGlkID09IDApCj4gKwkJCQkJcHJpdi0+cDVfaW50Zl9z
ZWwgPSBQNV9JTlRGX1NFTF9QSFlfUDA7Cj4gKwkJCQlpZiAoaWQgPT0gNCkKPiArCQkJCQlwcml2
LT5wNV9pbnRmX3NlbCA9IFA1X0lOVEZfU0VMX1BIWV9QNDsKCkNhbiB5b3UgdXNlIG9mX21kaW9f
cGFyc2VfYWRkcigpIGhlcmU/Ci0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgt
bWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
