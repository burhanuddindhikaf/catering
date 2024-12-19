<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-end">
            <a href="{{ url('/') }}" 
   class="inline-flex items-center px-4 py-2 bg-blue-500 border border-transparent rounded-md font-semibold text-xs text-blue-500 uppercase tracking-widest hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition ease-in-out duration-150">
    Kembali
</a>

        </div>
    </x-slot>
    

    <div>
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
            @if (Laravel\Fortify\Features::canUpdateProfileInformation())
                @livewire('profile.update-profile-information-form')

                <x-jet-section-border />
            @endif

            @if (Laravel\Fortify\Features::enabled(Laravel\Fortify\Features::updatePasswords()))
                <div class="mt-10 sm:mt-0">
                    @livewire('profile.update-password-form')
                </div>

                {{-- <x-jet-section-border /> --}}
            @endif

            {{-- @if (Laravel\Fortify\Features::canManageTwoFactorAuthentication())
                <div class="mt-10 sm:mt-0">
                    @livewire('profile.two-factor-authentication-form')
                </div>

                <x-jet-section-border />
            @endif --}}

            {{-- <div class="mt-10 sm:mt-0">
                @livewire('profile.logout-other-browser-sessions-form')
            </div> --}}

            @if (Laravel\Jetstream\Jetstream::hasAccountDeletionFeatures())
                <x-jet-section-border />

                <div class="mt-10 sm:mt-0">
                    @livewire('profile.delete-user-form')
                </div>
            @endif
        </div>
    </div>

    <style>
        .username {
    position: absolute;
    top: 10px; /* Jarak dari atas */
    right: 10px; /* Jarak dari kanan */
    display: flex;
    align-items: center;
    border: none;
}

.username svg {
    margin-left: 8px; /* Jarak antara nama dan ikon */
    margin-right: -4px; /* Sesuaikan posisi ikon */
}


    </style>
</x-app-layout>
