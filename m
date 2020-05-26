Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5461DF9CB
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 May 2020 19:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:From:
	Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YOkFQ/9OzJ1dn9SwK49oGTAN75ApUFZAwQMaKDKYrh8=; b=dQrxX+0gZLfljY
	6YHSjlVFwGZxhvlCI+cvfPxgAINRhDKgd4ls/YcdsSCdAaoVbR5aWv6fUmnJGvKC1z6CcBK1LgJiS
	uciTvngjPF+XHIBk/HTItunzir4xOuWwF7w9zwjd8z+K0eH4tGvJvKbgztC3W+3J+xVTl3bmumC66
	cctGfpQ7EHN+vNxgEBV9rx+/DQ5Z6lVh14zvq8gxuTEtHqk1Bh7jJtyPnrzh0PaLB/EtAUq6vWIQM
	C+0ysmC1SVf2Xba8RPO0V0ZiykbjOvr0hM30Toz1dOUmvBjJFvpOFP2xJCogwowTbxMNPNAE1tRMl
	60FfV3zexIndr26L4f/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcYPb-0006FZ-Tn; Sat, 23 May 2020 17:58:19 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcVFJ-0003iq-F6; Sat, 23 May 2020 14:35:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1590244501;
 bh=kfgRCsS6J6+QOu0EWYsu7OjnbshUEXN8SSFETFlJ2qo=;
 h=X-UI-Sender-Class:To:Cc:Subject:From:Date;
 b=ad2e2fa7ivGxYc0IEZWm3mXwG98HgfVCwc65jIH6TbjJwuoPKW4A0DMq1RT/zcF6f
 BbVhYpDAYVUXtlgAnHdZPSuSJel0zr0krvOtEhJ55jmSD/ctPqCiUOOjyCkQR44dz5
 mxkFMxR0OJAZNTA/zO5nLnjynp4OPQAWwNTFvJkA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.131.52.63]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MEZPl-1jnBYS0eyH-00Fj5C; Sat, 23
 May 2020 16:35:01 +0200
To: Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 netdev@vger.kernel.org
Subject: Re: [PATCH v2 4/5] net: devres: provide devm_register_netdev()
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <c9e4bd02-5f29-de36-245f-edc7c4868208@web.de>
Date: Sat, 23 May 2020 16:34:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:wRJ7kkVZgiKaTvdyRVeS84GvaqYnQvTUTuBZAQ/l27C3da0/oU3
 Q1MTsoLGtsBP/iXE4kdg/8CCwn2BgBEjZ8fWF+pN3bC2zy4gm6IM8XnXj964CukWYTA8eaH
 CgvzXStHqI5SLPzZvxoEcC/e3sdhQMLyVp8sR/UO37W/VlWDKe27E+UeGdwW87iNcbd8PCh
 dLecVySEfQv12GVCwKRqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eGoD8ktvtRM=:xNv8jlICaDO/Uz/RdvBBhF
 sITn+AryL55T+9qnhLfk+FVa57BvGVYiJWhb0RTNqQuHDE8OM1uoDjRpkoKF6z5LVTCrVvrZ+
 PtOS744B0JpIWQyriM8rqGp/5sCKtzdyjphXGWRwCrNfcHedOHAIyWHaJOwqyjY1yxEGfU9HO
 GIMfuXXDF9eWmSd9SehPVcn7rNfqbNQ94eHjno60HF0Gz08MD3E3tawhF2YqCKcY1Rw1xyP2S
 nyMyAfQjXu6C+R1uV5kZSFtZi/SWwcpSZ1MOg9crqbUPQYl000vmEMZX5HTJIbHI1A6V8P+9m
 V9+ygkeQQjPW31N32ielE1KcyjB2H2iT7nWSI427AjOGtOTwO2+Lr9pbBiFJtNWsCwUE9H/9t
 Km5W68TGzbXVvB12a1Sb0mFvStrCdNrILxdaW5j47KCe/JSns/a1rJZ9C+AeGXPwojA3m9lfg
 TNybwbxBuFfDqtL14Pcj0+8K/3EMB8wUCX8LX69SGhDMbAR52yF5s606WQZW9zvA3vz5MSOtT
 ksgM1D/1V9Fn84Wu2zqRVxJYjdtE0t8O8YAc6p4fpP6/9QxvsavlpU+v+/6CRdeRVjgMdJvmA
 P8rMOR461Tuua27492Zv5zyF8bHVYaEw8tr7KWIcY23bfjm/p+eSgBtqerdJmZK1VEWMQxDLd
 0JhdUHirsyia36srEszL6RvEFk0DRTsMDkEHszmgNFtXbvPnPlFTV5PRV4VhHTTjlX+6OILSm
 YA6heqlGGMqCLc165lXVaS9MUcmVLKhEf37QDlCb0l3KNCMMymC47DaVRfnrpx37cLA1cEWdJ
 /Lz/r7Z4C3D5+KY4QdaICSCs/agRNDR/e4S2T/bJsBCbiVYdCMW9nJogCQCGIOEK/00VYt3ZR
 UmLY6nYwNKV3by6ajpli4vgSYkW3ANPi9tDUSbPk4Ed89+nL2ei+m14etGH6OBz1uGVVgkA4X
 EI7eUXhboho0OZQ/aEbRolbIMywFlaOOMV7AI8L1kmlfn3Cd0AvKqAZY0EZVvR6vHZw6L4+f1
 +UMDwvOfDN8/RM5pypasajoMYNXIBPs6yjzBRYk3eb1q3v5MgT2SG9erVmIC6JK+J+3NW+94N
 ubf5baK2HPdhe8lWbTZPpLFW89iOf5DPemZpTgkJlHXp6HZFjQzzO+DqtDH6+Ht9p5cB/RBIW
 sdKgsrYjd/R2REcvYbxove/+W/3NFby3I4brQgDdEVJSDammYSdWBvaqHxg7+qDK47mo7629R
 iQB22up6quSVeQuVp
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_073529_840367_7A4E4A6A 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Mailman-Approved-At: Sat, 23 May 2020 10:58:18 -0700
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, kernel-janitors@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, linux-kernel@vger.kernel.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

4oCmCj4gKysrIGIvbmV0L2RldnJlcy5jCj4gQEAgLTM4LDMgKzM4LDU4IEBAIHN0cnVjdCBuZXRf
ZGV2aWNlICpkZXZtX2FsbG9jX2V0aGVyZGV2X21xcyhzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBz
aXplb2ZfcHJpdiwK4oCmCj4gKyAqCVRoaXMgaXMgYSBkZXZyZXMgdmFyaWFudCBvZiByZWdpc3Rl
cl9uZXRkZXYoKSBmb3Igd2hpY2ggdGhlIHVucmVnaXN0ZXIKPiArICoJZnVuY3Rpb24gd2lsbCBi
ZSBjYWxsIGF1dG9tYXRpY2FsbHkgd2hlbiB0aGUgbWFuYWdpbmcgZGV2aWNlIGlzCgpJcyB0aGUg
Zm9sbG93aW5nIHdvcmRpbmcgdmFyaWFudCBtb3JlIGFwcHJvcHJpYXRlPwoKKyAqCWZ1bmN0aW9u
IHdpbGwgYmUgYXV0b21hdGljYWxseSBjYWxsZWQgd2hlbiB0aGUgbWFuYWdpbmcgZGV2aWNlIGlz
CgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW1lZGlhdGVrCg==
