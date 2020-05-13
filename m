Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181F51D1ACF
	for <lists+linux-mediatek@lfdr.de>; Wed, 13 May 2020 18:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efudud/Gw520gBCvmQWYwz4USWGDRZiWidbjzIuVnf4=; b=rQAs1KYS2OVWfW
	GqVD3ULCd3vTeu9N7dtmLUuCMDaJIqRd83eEUpHvW0CkSl6dJdQwua/MQPeXDUKsZME6Xk6XTDN7i
	GcL2B2FjShrLQKNPo461RPjfO4tW1NcLzHzP2x/YiqQFEbiQGOIu3EdL629O1VduorII2RoZyAOY5
	rLGNwHMwKaUDCWZIlUEBAoyae1cfcaM/jqgvuSQkEiqBltHyzD8nC48HqsTghoy4MNt91mj7/f5Wq
	9zhEVdK6mX2RNhI0xrqZOMrK0bwwIxowYJsz96WDDnxAUsjAcQx2+Iy4J6YttuUPAC49L3gBU5ib2
	ijyzMKimjrz6NX29+Tdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYu3P-0006IE-Ln; Wed, 13 May 2020 16:16:19 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYu3L-0006Eu-Tv
 for linux-mediatek@lists.infradead.org; Wed, 13 May 2020 16:16:17 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a5so11317600pjh.2
 for <linux-mediatek@lists.infradead.org>; Wed, 13 May 2020 09:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LyPLNuD+8lJumUGsOnWEfikDadYO19lOXX3x0WOZ0d4=;
 b=fefxZYtV5OkHGeHQGJ47X7wvBnWZ4RYtX4TIXnibdt19UmuL9dYhO6/O3PiQCd5J+x
 0UCAK8uGrJbGhKy0Zblf6soJda/W6Kji7L/lsSB+IJpFSmEfGj1ILO7YNtIoYrufceDD
 b2RzeqaDZu5Vd4oe2qeAGhSH9V8nMSFbD7q8J0VZjmIKBTyaRvBKqLEjzP+GcrvZygS0
 DtL6PfyYMNevqrqNglU26lpgFcwmw6T8eQwBcBUpCOXvgh6K7J+eJwxGvYgPHxYGBuX9
 dOVSZNxl8vAHJMLcgXjXbuwBLzJuHU0AVFdSzoFUkICWrZbyrSUiQOG/2f+su21PqmqX
 Rz/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LyPLNuD+8lJumUGsOnWEfikDadYO19lOXX3x0WOZ0d4=;
 b=IgvH+DOwOu0yZ6Y5M1H6VqEq/OcOOWBhVUhiLk5uBbJ4+rzkPpRJ3RLWLiODKBuvbj
 o1HNBLS89UqBrWSyqUAFCvbFcerXjkbbg29cSEpDfauJsxNd7vjpGTlZBQYqSBnb40hr
 F7wcqCsvf2jfSoohqmP5gyfK1GjCFSXThaWnGpb4wyNR9/6LGI7wCRMy/ml+2StlnSxG
 QHtstM4IJU2Mn/P/cWaRXrQ4kwzQPPg4mUtsycYucDTnop7z3SzkUkOB4b7VyBU4HiZZ
 ssx9NfYZR83olIJAPiCNi5toMCCRRak4qP2Lkijyo1k1fkegM67cOQx59Io3IWpYwPt7
 8wKg==
X-Gm-Message-State: AGi0Puas6K+gb4TfWKFJQArWk7YxXir0LE89nXoTRh/f8Fij7hCYaChl
 KSLVtSNhZ5kz2umppdW9PKk=
X-Google-Smtp-Source: APiQypIoeZTSjODFO8Pz4MSVYEUUWgQwLVJESz5Himctavu2NKkLHzmCAaa9W2Wu/c3IsKJw7lICNw==
X-Received: by 2002:a17:90a:26a2:: with SMTP id
 m31mr34878067pje.128.1589386575038; 
 Wed, 13 May 2020 09:16:15 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x12sm11825pfq.209.2020.05.13.09.16.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 09:16:14 -0700 (PDT)
Subject: Re: [PATCH net-next] net: dsa: mt7530: set CPU port to fallback mode
To: DENG Qingfang <dqfext@gmail.com>
References: <20200513153717.15599-1-dqfext@gmail.com>
 <5d77da58-694a-7f9c-53fb-9d107e271d40@gmail.com>
 <CALW65jbN-qvEgz01Shff59S77ArZtNVK7kq74XdyDjuvVSA-_g@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2e3a12eb-64d7-94c1-f7a0-dc3910459aa4@gmail.com>
Date: Wed, 13 May 2020 09:16:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALW65jbN-qvEgz01Shff59S77ArZtNVK7kq74XdyDjuvVSA-_g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_091615_973388_4445E0F7 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, riddlariddla@hotmail.com,
 Paul Fertser <fercerpav@gmail.com>, netdev <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stijn Segers <foss@volatilesystems.org>, Szabolcs Hubai <szab.hu@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Tom James <tj17@me.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 5/13/2020 8:56 AM, DENG Qingfang wrote:
> Hi Florian
> 
> On Wed, May 13, 2020 at 11:46 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>>
>>
>>
>> On 5/13/2020 8:37 AM, DENG Qingfang wrote:
>>> Currently, setting a bridge's self PVID to other value and deleting
>>> the default VID 1 renders untagged ports of that VLAN unable to talk to
>>> the CPU port:
>>>
>>>       bridge vlan add dev br0 vid 2 pvid untagged self
>>>       bridge vlan del dev br0 vid 1 self
>>>       bridge vlan add dev sw0p0 vid 2 pvid untagged
>>>       bridge vlan del dev sw0p0 vid 1
>>>       # br0 cannot send untagged frames out of sw0p0 anymore
>>>
>>> That is because the CPU port is set to security mode and its PVID is
>>> still 1, and untagged frames are dropped due to VLAN member violation.
>>>
>>> Set the CPU port to fallback mode so untagged frames can pass through.
>>
>> How about if the bridge has vlan_filtering=1? The use case you present
>> seems to be valid to me, that is, you may create a VLAN just for the
>> user ports and not have the CPU port be part of it at all.
> 
> I forgot to mention that this is ONLY for vlan_filtering=1
> `bridge vlan` simply won't do anything if VLAN filtering is disabled.

It depends now as of this patch:

https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=54a0ed0df49609f4e3f098f8943e38e389dc2e15

and sorry I misunderstood your use case, you are changing the default
VLAN for the CPU port through the bridge's master device and you still
want it to be in the same VLAN membership as sw0p0, so yes that looks
correct.
-- 
Florian

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
